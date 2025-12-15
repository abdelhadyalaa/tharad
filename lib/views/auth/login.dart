import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tharad/core/ui/app_button.dart';
import 'package:tharad/core/ui/app_image.dart';
import 'package:tharad/core/ui/app_input.dart';

import '../../core/ui/app_button_underLine.dart';
import '../../core/ui/app_remember_check.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(height: 80.h),
              AppImage(image: "logo.png", bottomSpace: 100.h),
              Text(
                textAlign: TextAlign.center,
                "تسجيل الدخول",
                style: Theme.of(context).textTheme.titleLarge,
              ),
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
              AppInput(bottomSpace: 4, label: "Password", isPassword: true),
              Row(
                children: [
                  RememberMeCheckbox(),
                  Spacer(),
                  AppButtonUnderline(text: "هل نسيت كلمة المرور؟"),
                ],
              ),
              AppButton(text: "تسجيل الدخول"),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("ليس لديك حساب؟"),
                  AppButtonUnderline(text: "إنشاء حساب جديد"),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
