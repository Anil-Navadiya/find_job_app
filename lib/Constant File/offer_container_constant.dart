import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:phlox_animations/phlox_animations.dart';

import '../String Files/text_string.dart';

class OfferContainer extends StatelessWidget {
  const OfferContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(children: [
          const Category(
            icon: Icons.medication,
            text: insurance,
            subtext: insuranceSub,
          ),
          SizedBox(width: 20.w),
          const Category(
            icon: Icons.list_alt,
            text: english,
            subtext: englishSub,
          ),
        ]),
        SizedBox(height: 10.h),
        Row(children: [
          const Category(
            icon: Icons.school,
            text: experience,
            subtext: experienceSub,
          ),
          SizedBox(width: 20.w),
          const Category(
            icon: Icons.sentiment_satisfied,
            text: communication,
            subtext: communicationSub,
          ),
        ]),
      ],
    );
  }
}

class Category extends StatelessWidget {
  final IconData? icon;
  final String? text;
  final String? subtext;

  const Category({super.key,
    this.text,
    this.icon,
    this.subtext,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        PhloxAnimations(
          duration: const Duration(seconds: 1),
          fromY: 200,
          child: Container(
            height: 150.h,
            width: 150.w,
            decoration: BoxDecoration(
                color: Colors
                    .primaries[Random().nextInt(Colors.primaries.length)]
                    .shade100,
                borderRadius: BorderRadius.circular(30.r)),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 12.h),
                  Container(
                      height: 40.h,
                      width: 45.w,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15.r)),
                      child: Icon(
                        icon,
                        size: 25.sp,
                      )),
                  SizedBox(height: 10.h),
                  Text(
                    text!,
                    style: TextStyle(
                        fontSize: 16.sp,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 10.h),
                  Text(
                    subtext!,
                    style: TextStyle(
                      fontSize: 14.sp,
                      color: Colors.grey.shade600,
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
