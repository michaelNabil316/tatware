import 'package:flutter/material.dart';
import '../shared/style.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomMainBTN extends StatelessWidget {
  final String text;
  final Function()? onClick;
  final double horizPadding;
  const CustomMainBTN({
    Key? key,
    required this.text,
    required this.onClick,
    required this.horizPadding,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onClick,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 17.h, horizontal: horizPadding),
        decoration: mainBTNDec,
        child: Text(text, style: btnTxtStyle),
      ),
    );
  }
}
