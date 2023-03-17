import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:phlox_animations/phlox_animations.dart';

import '../String Files/text_string.dart';
import '../Ui/dashboard_page.dart';

class HomeContainerConstant extends StatelessWidget {
  const HomeContainerConstant({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // color: Colors.yellow,
      height: 510,
      child: ListView(
        scrollDirection: Axis.vertical,
        children: [
          const Category(
            jobTitle: javaDeveloper,
            subtitle: googleInc,
            time: fullTime,
            money: string1,
            day: day2,
          ),
          const Category(
            jobTitle: uiUx,
            subtitle: weSoftYou,
            time: partTime,
            money: office,
            day: day7,
          ),
          const Category(
            jobTitle: backEnd,
            subtitle: upSwot,
            time: remotely,
            money: years2,
            day: month,
          ),
          const Category(
            jobTitle: javaDeveloper,
            subtitle: googleInc,
            time: fullTime,
            money: string1,
            day: day2,
          ),
          SizedBox(height: 55.h),
        ],
      ),
    );
  }
}

class Category extends StatelessWidget {
  final String? jobTitle;
  final String? subtitle;
  final String? time;
  final String? money;
  final String? day;

  final Function? function;

  const Category({super.key,
    this.jobTitle,
    this.function,
    this.subtitle,
    this.time,
    this.money,
    this.day,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => DashBoardPage(
                    jobTitle: jobTitle, subTitle: subtitle)));
      },
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: PhloxAnimations(
          fromDegrees: -90,
          fromScale: 0,
          fromOpacity: 0.1,
          fromY: -100,
          fromX: 100,
          duration: const Duration(milliseconds: 900),
          child: Container(
            height: 120.h,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: Colors.grey.shade100,
              borderRadius: BorderRadius.circular(18.r),
            ),
            padding: const EdgeInsets.all(15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          jobTitle!,
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 18.sp,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          subtitle!,
                          style:
                              TextStyle(color: Colors.black, fontSize: 15.sp),
                        ),
                      ],
                    ),
                    const Spacer(),
                    Icon(
                      Icons.more_horiz,
                      size: 25.sp,
                    )
                  ],
                ),
                SizedBox(
                  height: 20.h,
                ),
                Row(
                  children: [
                    Container(
                      height: 30.h,
                      width: 85.w,
                      decoration: BoxDecoration(
                          color: Colors.white54,
                          borderRadius: BorderRadius.circular(25.r)),
                      child: Center(
                        child: Text(
                          time!,
                          style: const TextStyle(color: Colors.black),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10.w,
                    ),
                    Container(
                      height: 30.h,
                      width: 85.w,
                      decoration: BoxDecoration(
                          color: Colors.white54,
                          borderRadius: BorderRadius.circular(25.r)),
                      child: Center(
                        child: Text(
                          money!,
                          style: const TextStyle(color: Colors.black),
                        ),
                      ),
                    ),
                    const Spacer(),
                    Text(
                      day!,
                      style: const TextStyle(color: Colors.black),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
