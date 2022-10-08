import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../shared/style.dart';

class TranslationWidget extends StatelessWidget {
  const TranslationWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(Icons.language, size: 16.sp),
        SizedBox(width: 5.w),
        Text("English", style: size15),
      ],
    );
  }
}
