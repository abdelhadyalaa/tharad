import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/ui/app_button.dart';
import '../../core/ui/app_button_underLine.dart';
import '../../core/ui/app_image.dart';
import '../../core/ui/app_input.dart';
import '../../core/ui/app_remember_check.dart';
import '../../core/ui/app_upload_image.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(height: 60.h),
              AppImage(image: "logo.png", bottomSpace: 40.h),
              Text(
                textAlign: TextAlign.center,
                "إنشاء حساب جديد",
                style: Theme.of(context).textTheme.titleLarge,
              ),
              Text(
                "الصورة الشخصية",
                style: Theme.of(context).textTheme.titleMedium,
              ),
              SizedBox(height: 6.h),
              AppImageUpLoader(),
              SizedBox(height: 12.h),
              Text(
                "اسم المستخدم",
                style: Theme.of(context).textTheme.titleMedium,
              ),
              SizedBox(height: 6.h),
              AppInput(bottomSpace: 12, label: "thar22"),
              Text(
                "البريد الإلكتروني",
                style: Theme.of(context).textTheme.titleMedium,
              ),
              SizedBox(height: 6.h),
              AppInput(bottomSpace: 12, label: "Tharad@gmail.com"),
              Text(
                "كلمة المرور",
                style: Theme.of(context).textTheme.titleMedium,
              ),
              SizedBox(height: 6.h),
              AppInput(bottomSpace: 4, label: "Password", isPassword: true),
              Text(
                "تأكيد كلمة المرور",
                style: Theme.of(context).textTheme.titleMedium,
              ),
              SizedBox(height: 6.h),
              AppInput(bottomSpace: 40, label: "Password", isPassword: true),
              AppButton(text: "تسجيل الدخول"),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("لديك حساب؟"),
                  AppButtonUnderline(text: " تسجيل الدخول"),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
