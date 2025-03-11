import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:syncfusion_flutter_charts/sparkcharts.dart';

import '../../app_routes.dart';
import '../../components/bottom_sheets.dart';
import '../../components/common_button.dart';
import '../../components/custom_card.dart';
import '../../components/custom_container.dart';
import '../../components/custom_tile.dart';
import '../../components/primary_button.dart';

import '../../components/withdraw_bottom_sheet.dart';
import '../../utils/utils.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(gradient: gradient),
        child: SingleChildScrollView(
          // Fix: Enable scrolling
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 30.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Expanded(
                      // Fix: Use Expanded for proper constraints
                      child: Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                              text: "Hello ",
                              style: GoogleFonts.openSans(
                                color: const Color(0xffFF934F),
                                fontWeight: FontWeight.w700,
                                fontSize: 12.sp,
                              ),
                            ),
                            TextSpan(
                              text: "Talan Vaccaro",
                              style: GoogleFonts.openSans(
                                color: Colors.white,
                                fontWeight: FontWeight.w700,
                                fontSize: 20.sp,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Stack(
                      children: [
                        const Icon(
                          Icons.notifications_none,
                          color: Colors.white,
                          size: 40,
                        ),
                        Positioned(
                          right: 0,
                          top: 4,
                          child: Container(
                            alignment: Alignment.center,
                            height: 13.h,
                            width: 25.w,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(6.r),
                              color: Colors.red,
                            ),
                            child: Text(
                              "9 +",
                              style: GoogleFonts.openSans(
                                color: Colors.white,
                                fontSize: 10.sp,
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 20.h),
                Text(
                  "My Available Balance",
                  style: GoogleFonts.openSans(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    fontSize: 14.sp,
                  ),
                ),
                SizedBox(height: 20.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "\$12,253.70",
                      style: GoogleFonts.openSans(
                        color: Colors.white,
                        fontWeight: FontWeight.w900,
                        fontSize: 24.sp,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Get.toNamed(AppRoutes.availableBalanceScreen);
                      },
                      child: const Icon(
                        Icons.arrow_forward,
                        color: Colors.white,
                        size: 30,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20.h), // Fix: Add spacing
                Card(
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.r),
                  ),
                  color: const Color(
                      0xff56441E), // Updated background color for a warm tone
                  child: Stack(
                    children: [
                      // Background Container with Gradient
                      Container(
                        height: 300.h,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.r),
                          gradient: const LinearGradient(
                            tileMode: TileMode.clamp,
                            stops: [0.0, 0.5, 1.0],
                            colors: [
                              Color(0xff24190E),
                              Color(0xff815B00),
                              Color(0xff56441E),
                            ],
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.5),
                              blurRadius: 10,
                              offset: const Offset(0, 5),
                            ),
                          ],
                        ),
                        child: Column(
                          children: [
                            // Info Container on Top
                            Padding(
                              padding: EdgeInsets.all(8.0.w),
                              child: Container(
                                height: 80.h,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15.r),
                                  color: Colors.black,
                                ),
                                padding: EdgeInsets.all(8.0.w),
                                child: Row(
                                  children: [
                                    // Titles and Subtitle
                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            "Total Spending",
                                            style: GoogleFonts.openSans(
                                              color: Colors.white,
                                              fontSize: 12.sp,
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                          SizedBox(height: 4.h),
                                          Text(
                                            "\$6,234.00",
                                            style: GoogleFonts.openSans(
                                              color: Colors.white,
                                              fontWeight: FontWeight.w900,
                                              fontSize: 24.sp,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    // Percentage Indicator
                                    Container(
                                      height: 30.h,
                                      padding:
                                          EdgeInsets.symmetric(horizontal: 8.w),
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(20.r),
                                        color: const Color(0xffF5ED31),
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          const Icon(
                                            Icons.arrow_drop_up,
                                            color: Colors.black,
                                            size: 20,
                                          ),
                                          Text(
                                            "3.2%",
                                            style: GoogleFonts.openSans(
                                              color: Colors.black,
                                              fontWeight: FontWeight.w700,
                                              fontSize: 12.sp,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    const SizedBox(width: 10),
                                    const Icon(
                                      Icons.arrow_forward_ios,
                                      color: Colors.white,
                                      size: 20,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            const Spacer(),

                            // Chart Section
                            Expanded(
                              child: SfCartesianChart(
                                plotAreaBorderWidth: 0,
                                primaryXAxis: const NumericAxis(
                                  isVisible: false,
                                  majorGridLines: MajorGridLines(width: 0),
                                ),
                                primaryYAxis: const NumericAxis(
                                  isVisible: false,
                                  majorGridLines: MajorGridLines(width: 0),
                                  minimum: 0,
                                  maximum: 5,
                                ),
                                series: <SplineSeries<ChartData, double>>[
                                  SplineSeries<ChartData, double>(
                                    dataSource: getChartData(),
                                    xValueMapper: (ChartData data, _) => data.x,
                                    yValueMapper: (ChartData data, _) => data.y,
                                    color: const Color(0xFFFFA07A),
                                    width: 4,
                                    splineType:
                                        SplineType.natural, // Enhanced waves
                                    opacity: 0.8,
                                  )
                                ],
                              ),
                            ),
                            const Spacer(),

                            // Button Section
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 10),
                              child: Row(
                                children: [
                                  Expanded(
                                    child: InkWell(
                                      onTap: () {
                                        showModalBottomSheet(
                                          context: context,
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.vertical(
                                                top: Radius.circular(15)),
                                          ),
                                          builder: (context) => BottomSheets(),
                                        );
                                      },
                                      child: CommonButton(
                                        title: "Add Money",
                                        backgroundColor:
                                            const Color(0xffD2B48C),
                                        borderRadius: 20.r,
                                        elevation: 3,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(width: 10),
                                  Expanded(
                                    child: GestureDetector(
                                      onTap: () {
                                        showModalBottomSheet(
                                          context: context,
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.vertical(
                                                top: Radius.circular(15)),
                                          ),
                                          builder: (context) =>
                                              WithdrawBottomSheet(),
                                        );
                                      },
                                      child: CommonButton(
                                        title: "Withdraw",
                                        backgroundColor:
                                            const Color(0xffD2B48C),
                                        borderRadius: 20.r,
                                        elevation: 3,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                CustomContainer(
                  height: MediaQuery.of(context).size.height * 0.2,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Savings",
                                style: GoogleFonts.openSans(
                                  color: Colors.white,
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              SizedBox(height: 4.h),
                              Text(
                                "\$0.00",
                                style: GoogleFonts.openSans(
                                  color: Colors.white,
                                  fontSize: 24.sp,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(height: 4.h),
                              Text(
                                "Up to 4% interest",
                                style: GoogleFonts.openSans(
                                  color: Colors.white70,
                                  fontSize: 12.sp,
                                ),
                              ),
                            ],
                          ),
                        ),

                        // Circular Icon
                        Container(
                          height: 60.h,
                          width: 60.w,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.transparent,
                            border: Border.all(width: 3, color: Colors.white),
                          ),
                          child: Center(
                            child: Container(
                                alignment: Alignment.center,
                                height: 40.h,
                                width: 40.w,
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.transparent,
                                ),
                                child: Image.asset(
                                  "assets/images/doller.png",
                                  fit: BoxFit.cover,
                                )),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Recent Transactions",
                      style: GoogleFonts.openSans(
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                        fontSize: 16.sp,
                      ),
                    ),
                    const Icon(
                      Icons.arrow_forward,
                      color: Colors.white,
                      size: 30,
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
                  height: 20,
                ),
                CustomContainer(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Borrow",
                              style: GoogleFonts.openSans(
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                                fontSize: 14.sp,
                              ),
                            ),
                            Icon(
                              Icons.arrow_forward_ios,
                              color: Colors.white,
                              size: 16,
                            )
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Container(
                              height: 20.h,
                              width: 20.w,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.transparent,
                                border:
                                    Border.all(width: 3, color: Colors.white),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text.rich(
                              TextSpan(
                                children: [
                                  TextSpan(
                                    text: "\$50.00 ",
                                    style: GoogleFonts.openSans(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w700,
                                      fontSize: 13.sp,
                                    ),
                                  ),
                                  TextSpan(
                                    text: "available",
                                    style: GoogleFonts.openSans(
                                      color: Colors.white54,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 13.sp,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Container(
                              height: 20.h,
                              width: 20.w,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.transparent,
                                border:
                                    Border.all(width: 3, color: Colors.green),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text.rich(
                              TextSpan(
                                children: [
                                  TextSpan(
                                    text: "\$00.00 ",
                                    style: GoogleFonts.openSans(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w700,
                                      fontSize: 13.sp,
                                    ),
                                  ),
                                  TextSpan(
                                    text: "owed",
                                    style: GoogleFonts.openSans(
                                      color: Colors.white54,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 13.sp,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                CustomContainer(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "More way to add mony",
                          style: GoogleFonts.openSans(
                            color: Colors.white,
                            fontWeight: FontWeight.w700,
                            fontSize: 13.sp,
                          ),
                        ),
                        CustomTile(
                          title: "Direct deposit",
                          subtitle: "Get paid up to 2 days faster",
                          leading: Container(
                            height: 40.h,
                            width: 40.w,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage("assets/images/down.png")),
                              shape: BoxShape.circle,
                              color: Colors.transparent,
                              border: Border.all(width: 2, color: Colors.white),
                            ),
                          ),
                        ),
                        CustomTile(
                          title: "Get bank or wire transfer",
                          subtitle: "Send from another account",
                          leading: Card(
                            elevation: 3,
                            shadowColor: Colors.black12,
                            color: Colors.transparent,
                            child: Container(
                              height: 40.h,
                              width: 40.w,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage("assets/images/dp.png")),
                                shape: BoxShape.circle,
                                color: Colors.transparent,
                                border:
                                    Border.all(width: 2, color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                        CustomTile(
                          title: "Deposit paper mony",
                          subtitle: "Send from another account",
                          leading: Card(
                            elevation: 3,
                            shadowColor: Colors.black12,
                            color: Colors.transparent,
                            child: Container(
                              height: 40.h,
                              width: 40.w,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.transparent,
                                border:
                                    Border.all(width: 2, color: Colors.white),
                              ),
                              child: Icon(
                                Icons.attach_money,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                        CustomTile(
                          title: "Deposit paper mony",
                          subtitle: "Send from another account",
                          leading: Card(
                            elevation: 3,
                            shadowColor: Colors.black12,
                            color: Colors.transparent,
                            child: Container(
                              height: 40.h,
                              width: 40.w,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.transparent,
                                border:
                                    Border.all(width: 2, color: Colors.white),
                              ),
                              child: Icon(
                                Icons.fact_check_outlined,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                        CustomTile(
                          title: "Deposit paper mony",
                          subtitle: "Send from another account",
                          leading: Card(
                            elevation: 3,
                            shadowColor: Colors.black12,
                            color: Colors.transparent,
                            child: Container(
                              height: 40.h,
                              width: 40.w,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.transparent,
                                border:
                                    Border.all(width: 2, color: Colors.white),
                              ),
                              child: Icon(
                                Icons.autorenew_outlined,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  List<ChartData> getChartData() {
    return [
      ChartData(0, 1),
      ChartData(1, 2.5),
      ChartData(2, 1.8),
      ChartData(3, 3.5),
      ChartData(4, 2),
      ChartData(5, 4),
      ChartData(6, 2.5),
      ChartData(7, 3.8),
      ChartData(8, 2),
      ChartData(9, 4.5),
    ];
  }
}

class ChartData {
  final double x;
  final double y;
  ChartData(this.x, this.y);
}
