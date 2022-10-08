import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'listTile_check.dart';

class MultiCheck extends StatelessWidget {
  const MultiCheck({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SizedBox(height: 16.h),
        const ListTileCheck(title: "Security"),
        SizedBox(height: 5.h),
        const ListTileCheck(title: "Supply Chain"),
        SizedBox(height: 5.h),
        const ListTileCheck(title: "Information Technology"),
        SizedBox(height: 5.h),
        const ListTileCheck(title: "Human Resource"),
        SizedBox(height: 5.h),
        const ListTileCheck(title: "Business Research"),
        SizedBox(height: 16.h),
      ],
    );
  }
}
