import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'app_image.dart';

class AppImageUpLoader extends StatelessWidget {
  const AppImageUpLoader({super.key});

  @override
  Widget build(BuildContext context) {
    return DottedBorder(
      options: RoundedRectDottedBorderOptions(
        dashPattern: [9, 5],

        radius: Radius.circular(8.r),
        color: Color(0xff42867B),
        strokeWidth: 1,
      ),
      child: Container(
        decoration: BoxDecoration(
          color: Color(0xffF4F7F6),
          borderRadius: BorderRadius.circular(8.r),
        ),
        width: double.infinity.w,
        height: 87.h,
        child: Column(
          children: [
            SizedBox(height: 18.h),
            GestureDetector(
              onTap: () {},
              child: AppImage(image: "camera.svg", bottomSpace: 6.h),
            ),
            Text(
              "الملفات المسموح بيها :  JPEG , PNG",
              style: Theme.of(context).textTheme.titleSmall,
            ),
            Text(
              "الحد الاقصي : 5MB",
              style: Theme.of(context).textTheme.titleSmall,
            ),
          ],
        ),
      ),
    );
  }
}
