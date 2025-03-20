import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../utils/utils.dart';

class MassageScreen extends StatefulWidget {
  const MassageScreen({super.key});

  @override
  State<MassageScreen> createState() => _MassageScreenState();
}

class _MassageScreenState extends State<MassageScreen> {
  final List<Map<String, dynamic>> massage = [
    {
      "sender": "Alice",
      "text": "Hey! How are you",
      "image": "assets/images/image_man.png",
      "status": "read",
    },
    {
      "sender": "Me",
      "text": "Hey! How are you",
      "image": "assets/images/profile_pic.jpeg",
      "status": "read",
    },
    {
      "sender": "Alice",
      "text": "Hey! How are you",
      "image": "assets/images/image_man.png",
      "status": "read",
    },
    {
      "sender": "Me",
      "text": "Hey! How are you",
      "image": "assets/images/profile_pic.jpeg",
      "status": "read",
    }
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(gradient: gradient),
        child: Padding(
          padding: EdgeInsets.only(top: 50, left: 10, right: 10),
          child: Column(
            children: [
              Row(
                children: [
                  InkWell(
                    onTap: () {
                      Get.back();
                    },
                    child: Image.asset("assets/images/backbtn.png",
                        height: 40.h),
                  ),
                  SizedBox(
                    width: 80.w,
                  ),
                  Text("Support",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18.sp,
                          fontWeight: FontWeight.bold))
                ],
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: massage.length,
                  itemBuilder: (context, index) {
                    final message = massage[index];
                    final isMe = message['sender'] == "Me";

                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          const Text(
                            "10:45 AM", // Static time
                            style:
                            TextStyle(fontSize: 12, color: Colors.white),
                          ),
                          Row(
                            mainAxisAlignment: isMe
                                ? MainAxisAlignment.start
                                : MainAxisAlignment.end,
                            //crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              if (!isMe)
                                Row(
                                  children: [
                                    getStatusIcon(message['status']),
                                  ],
                                ),
                              // if (isMe) ...[
                              //   CircleAvatar(
                              //     backgroundImage:
                              //     AssetImage(message["image"]),
                              //     radius: 16,
                              //   ),
                              // ],

                              // Message Bubble
                              Flexible(
                                child: Container(
                                  padding: const EdgeInsets.all(12),
                                  margin: const EdgeInsets.symmetric(
                                      vertical: 4, horizontal: 8),
                                  decoration: BoxDecoration(
                                    color: !isMe
                                        ? const Color(0xff9D6712)
                                        : Colors.grey[300],
                                    borderRadius: BorderRadius.circular(16),
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                    CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        message['text'],
                                        style: TextStyle(
                                            fontSize: 16,
                                            color: isMe
                                                ? Colors.black
                                                : Colors.white),
                                      ),
                                      const SizedBox(height: 4),
                                    ],
                                  ),
                                ),
                              ),

                              // if (!isMe) ...[
                              //   const SizedBox(width: 8),
                              //   // Profile Image (Right side for Me)
                              //   CircleAvatar(
                              //     backgroundImage:
                              //     AssetImage(message["image"]),
                              //     radius: 20,
                              //   ),
                              // ],
                            ],
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
      Row(
        children: [
          Expanded( // Ensures the container takes available space
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.2),
                borderRadius: BorderRadius.circular(6),
              ),
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'write',
                        hintStyle: TextStyle(
                          color: Colors.grey[400],
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(16),
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),
                  ),
                  IconButton(
                    icon: Icon(Icons.chat, color: Colors.grey),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
          ),
          SizedBox(width: 8), // Add spacing between text field and icon
          Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Color(0xff00AC83),
            ),
            child: Icon(Icons.camera_alt,color: Colors.white,),
          ),
        ],
      ),

      SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
      ),

    );
  }

  Widget getStatusIcon(String status) {
    switch (status) {
      case 'read':
        return const Icon(Icons.done_all, color: Color(0xff9D6712), size: 16);
      case 'delivered':
        return const Icon(Icons.done_all, color: Colors.grey, size: 16);
      case 'sent':
      default:
        return const Icon(Icons.done, color: Colors.grey, size: 16);
    }
  }
}
