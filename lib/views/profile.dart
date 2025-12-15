import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../core/ui/app_button.dart';
import '../core/ui/app_button_underLine.dart';
import '../core/ui/app_image.dart';
import '../core/ui/app_input.dart';
import '../core/ui/app_upload_image.dart';

class ProfileView extends StatefulWidget {
  const ProfileView({super.key});

  @override
  State<ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: AppImage(image: "notification.svg"),
          ),
        ],
        title: Text("الملف الشخصي", style: TextStyle(color: Colors.white)),
        centerTitle: true,
        elevation: 0,
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0xff5CC7A3), Color(0xff265355)],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,

              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30.r),
                topRight: Radius.circular(30.r),
              ),
            ),
            width: double.infinity.h,
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(height: 32.h),
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
                  "الصورة الشخصية",
                  style: Theme.of(context).textTheme.titleMedium,
                ),

                AppImageUpLoader(),
                SizedBox(height: 12.h),

                Text(
                  "كلمة المرور القديمة",
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                SizedBox(height: 6.h),
                AppInput(bottomSpace: 4, label: "Password", isPassword: true),
                Text(
                  "كلمة المرور الجديدة",
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                SizedBox(height: 6.h),
                AppInput(bottomSpace: 6, label: "Password", isPassword: true),

                Text(
                  "تأكيد كلمة المرور الجديدة",
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                SizedBox(height: 6.h),
                AppInput(bottomSpace: 50, label: "Password", isPassword: true),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 78.0),
                  child: AppButton(
                    text: "حفظ التغيرات",
                    onPressed: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text("تم حفظ التغيرات بنجاح"),
                          duration: Duration(seconds: 3),
                          backgroundColor: Color(0xff42867B),
                        ),
                      );
                      setState(() {});
                    },
                  ),
                ),
                AppButtonUnderline(text: "تسجيل الخروج", isLogout: true),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
