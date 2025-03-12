import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kittbank/app_routes.dart';

import '../../components/activtiy_chart.dart';
import '../../components/custom_card.dart';
import '../../components/custom_container.dart';
import '../../components/money_card_chart.dart';
import '../../utils/utils.dart';

class InsightsActivity extends StatelessWidget {
  const InsightsActivity({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(kToolbarHeight),
        child: AppBar(
          leading: InkWell(
            onTap: () {
              Get.offNamed(
                AppRoutes.tabScreen,
                arguments: {"initialIndex": 1},
              );
            },
            child: Image.asset(
              "assets/images/backbtn.png",
            ),
          ),
          title: Text(
            "Insights & Activity",
            style: GoogleFonts.openSans(
              color: Colors.white,
              fontWeight: FontWeight.w700,
              fontSize: 18.sp,
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.transparent, // Make it transparent
          elevation: 0, // Remove shadow
          flexibleSpace: Container(
            decoration: BoxDecoration(
              gradient: gradient,
            ),
          ),
        ),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(gradient: gradient),
        child: SingleChildScrollView(
          // Fix: Enable scrolling
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 10.w,
            ),
            child: Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                CustomBarChart(),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: MoneyCard(
                        title: "Money Income",
                        amount: "10,00.00",
                        graphColor: Colors.yellow,
                        data: [1, 3, 5, 2, 4, 6, 7],
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: MoneyCard(
                        title: "Money Spend",
                        amount: "6,234.00",
                        graphColor: Colors.orange,
                        data: [2, 4, 3, 5, 6, 2, 7],
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Recent Transactions",
                      style: GoogleFonts.openSans(
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                        fontSize: 14.sp,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        //Get.toNamed(AppRoutes.availableBalanceScreen);
                      },
                      child: const Icon(
                        Icons.arrow_forward,
                        color: Colors.white,
                        size: 25,
                      ),
                    ),
                  ],
                ),
                CustomContainer(
                  child: CustomCard(
                    img: "assets/images/inter.png",
                    title: "Receive",
                    subtitle: "Fiver International",
                    fontSize: 14,
                    trailing: "+\$100.00",
                    height: 50,
                    width: 50,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                CustomContainer(
                  child: CustomCard(
                    img: "assets/images/outer.png",
                    title: "Transfer",
                    subtitle: "Amazon Shop",
                    fontSize: 14,
                    trailing: "+\$100.00",
                    height: 50,
                    width: 50,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                CustomContainer(
                  child: CustomCard(
                    img: "assets/images/inter.png",
                    title: "Receive",
                    subtitle: "Fiver International",
                    fontSize: 14,
                    trailing: "+\$100.00",
                    height: 50,
                    width: 50,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                CustomContainer(
                  child: CustomCard(
                    img: "assets/images/outer.png",
                    title: "Transfer",
                    subtitle: "Amazon Shop",
                    fontSize: 14,
                    trailing: "+\$100.00",
                    height: 50,
                    width: 50,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
