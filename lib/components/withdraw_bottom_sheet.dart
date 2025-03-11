import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kittbank/components/custom_tile.dart';

import 'bottom_sheets.dart';
import 'next_dialog.dart';

class WithdrawBottomSheet extends StatefulWidget {
  const WithdrawBottomSheet({super.key});

  @override
  State<WithdrawBottomSheet> createState() => _WithdrawBottomSheetState();
}

class _WithdrawBottomSheetState extends State<WithdrawBottomSheet> {
  int? selectedCardIndex;
  double value = 0.0;
  final double maxBalance = 12234.40;
  @override
  Widget build(BuildContext context) {
    return BottomSheet(
      enableDrag: false,
      onClosing: () {},
      builder: (context) {
        return SizedBox(
          height: 350,
          child: Padding(
            padding: const EdgeInsets.only(top: 35),
            child: Column(
              children: [
                Text(
                  "Withdraw",
                  style: GoogleFonts.roboto(
                    color: Colors.black,
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Total Balance",
                  style: GoogleFonts.roboto(
                    color: Colors.black,
                    fontWeight: FontWeight.w900,
                    fontSize: 18,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "\$12,253.70",
                  style: GoogleFonts.roboto(
                    color: Colors.black,
                    fontWeight: FontWeight.w900,
                    fontSize: 18,
                  ),
                ),
                Text(
                  "\$${value.toStringAsFixed(2)}",
                  style: GoogleFonts.roboto(
                    color: Colors.black,
                    fontWeight: FontWeight.w900,
                    fontSize: 60,
                  ),
                ),
                Slider(
                  max: maxBalance,
                  min: 0.0,
                  value: value,
                  onChanged: (val) {
                    setState(() {
                      value = val;
                    });
                  },
                  activeColor: Color(0xffFAD332),
                  inactiveColor: Colors.white,
                  thumbColor: Colors.white,
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                      showModalBottomSheet(

                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10),
                          ),
                        ),
                        context: context,
                        builder: (context) {
                          return StatefulBuilder(
                            builder: (context, setModalState) {
                              // ✅ Fix here
                              return Container(
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(15),
                                    topRight: Radius.circular(15),
                                  ),
                                ),
                                height: 500,
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10, vertical: 10),
                                  child: Column(
                                    children: [
                                      Text(
                                        "How would you like to Transfer \$100 to your external bank.",
                                        textAlign: TextAlign.center,
                                        style: GoogleFonts.roboto(
                                          color: Colors.black,
                                          fontSize: 20,
                                          fontWeight: FontWeight.w800,
                                        ),
                                      ),
                                      SizedBox(height: 15),
                                      ListTile(
                                        leading: Image.asset(
                                            "assets/images/credit_card.png"),
                                        title: Text("Debit Card 123"),
                                        trailing: ElevatedButton(
                                          onPressed: () {
                                            setModalState(() {
                                              // ✅ Use modal's setState
                                              selectedCardIndex = 0;
                                            });
                                          },
                                          style: ElevatedButton.styleFrom(
                                            backgroundColor:
                                                selectedCardIndex == 0
                                                    ? Color(0xff39B54A)
                                                    : Colors.white,
                                          ),
                                          child: Text(
                                            "Select",
                                            style: TextStyle(
                                              color: selectedCardIndex == 0
                                                  ? Colors.white
                                                  : Colors.black,
                                            ),
                                          ),
                                        ),
                                      ),
                                      SizedBox(height: 10),
                                      ListTile(
                                        leading: Image.asset(
                                            "assets/images/credit_card.png"),
                                        title: Text("Credit Card 123"),
                                        trailing: ElevatedButton(
                                          onPressed: () {
                                            setModalState(() {
                                              // ✅ Use modal's setState
                                              selectedCardIndex = 1;
                                            });
                                          },
                                          style: ElevatedButton.styleFrom(
                                            backgroundColor:
                                                selectedCardIndex == 1
                                                    ? Color(0xff39B54A)
                                                    : Colors.white,
                                          ),
                                          child: Text(
                                            "Select",
                                            style: TextStyle(
                                              color: selectedCardIndex == 1
                                                  ? Colors.white
                                                  : Colors.black,
                                            ),
                                          ),
                                        ),
                                      ),
                                      SizedBox(height: 10),
                                      ListTile(
                                        leading: Image.asset(
                                            "assets/images/mony.png"),
                                        title: Text("Mobile Money"),
                                        trailing: ElevatedButton(
                                          onPressed: () {
                                            setModalState(() {
                                              // ✅ Use modal's setState
                                              selectedCardIndex = 2;
                                            });
                                          },
                                          style: ElevatedButton.styleFrom(
                                            backgroundColor:
                                                selectedCardIndex == 2
                                                    ? Color(0xff39B54A)
                                                    : Colors.white,
                                          ),
                                          child: Text(
                                            "Select",
                                            style: TextStyle(
                                              color: selectedCardIndex == 2
                                                  ? Colors.white
                                                  : Colors.black,
                                            ),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 25,
                                      ),
                                      ElevatedButton(
                                        onPressed: () {
                                          Navigator.pop(context);
                                          showModalBottomSheet(context: context, builder: (context){
                                            return NextDialog();
                                          });
                                        },
                                        style: ElevatedButton.styleFrom(
                                            minimumSize: Size(
                                                MediaQuery.of(context)
                                                    .size
                                                    .width,
                                                45),
                                            backgroundColor: Color(0xffFAD332),
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                            )),
                                        child: Text(
                                          "NEXT",
                                          style: GoogleFonts.roboto(
                                              color: Colors.black,
                                              fontWeight: FontWeight.w800,
                                              fontSize: 14),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            },
                          );
                        },
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
                      "Withdraw",
                      style: GoogleFonts.roboto(
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                          fontSize: 16),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
