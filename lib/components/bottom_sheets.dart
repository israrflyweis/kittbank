import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import 'dialog_box.dart';

class BottomSheets extends StatefulWidget {
  const BottomSheets({super.key});

  @override
  State<BottomSheets> createState() => _BottomSheetsState();
}

class _BottomSheetsState extends State<BottomSheets> {
  int selectIndex = -1;
  final List addMony = ["\$10", "\$20", "\$30", "\$40", "\$50", "\$60"];

  @override
  Widget build(BuildContext context) {
    return BottomSheet(
        showDragHandle: false,
        enableDrag: false,
        onClosing: () {},
        builder: (context) {
          return Container(
            height: 250,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(15),
                topLeft: Radius.circular(15),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Column(
                children: [
                  Text(
                    "ADD MONEY",
                    style: GoogleFonts.roboto(
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                      fontSize: 14,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Wrap(
                    spacing: 10,
                    runSpacing: 10,
                    children: List.generate(addMony.length, (index) {
                      final add = addMony[index];
                      return GestureDetector(
                        onTap: () {
                          setState(() {
                            selectIndex = index;
                          });
                        },
                        child: Container(
                          width: MediaQuery.of(context).size.width / 3 - 15,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(
                                color: selectIndex == index
                                    ? Colors.green
                                    : Colors.black,
                                width: 1.2),
                          ),
                          height: 40,
                          alignment: Alignment.center,
                          child: Text(
                            add,
                            style: GoogleFonts.roboto(
                              color: selectIndex == index
                                  ? Colors.green
                                  : Colors.black,
                              fontSize: 14,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                        ),
                      );
                    }),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 20),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pop(context);
                        Get.dialog(
                          Dialog(
                            insetPadding: EdgeInsets.symmetric(vertical: 200),
                            child: DialogBox(),
                          ),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                          minimumSize:
                              Size(MediaQuery.of(context).size.width, 45),
                          backgroundColor: Color(0xffFAD332),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          )),
                      child: Text(
                        "ADD",
                        style: GoogleFonts.roboto(
                            color: Colors.black,
                            fontWeight: FontWeight.w800,
                            fontSize: 14),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        });
  }
}
