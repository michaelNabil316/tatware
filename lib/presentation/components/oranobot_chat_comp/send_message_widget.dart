import 'package:assignment/presentation/shared/navigate.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../screens/home_page/home_page.dart';
import '../../shared/style.dart';

class SendMessage extends StatelessWidget {
  final TextEditingController controller;
  const SendMessage({Key? key, required this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 94.h,
      child: Row(
        children: [
          SizedBox(width: 14.w),
          Container(
            width: 352.w,
            height: 48.h,
            decoration: textFormDec,
            child: TextField(
              controller: controller,
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: 'Type Something ...',
                prefixIcon: Icon(Icons.language, size: 30.sp),
                prefixIconColor: Colors.grey,
                suffixIcon: Container(
                  padding: EdgeInsets.all(10.sp),
                  child: SvgPicture.asset("assets/images/Voice_mic.svg",
                      height: 30.sp),
                ),
                suffixIconColor: Colors.grey,
              ),
            ),
          ),
          SizedBox(width: 10.w),
          GestureDetector(
            child: SizedBox(
              height: 30.sp,
              child: SvgPicture.asset("assets/images/Send.svg"),
            ),
            onTap: () {
              controller.clear();
              navigateTo(context, const HomePage());
            },
          ),
        ],
      ),
    );
  }
}
