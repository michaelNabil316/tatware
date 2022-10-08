import 'package:assignment/presentation/shared/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RecommendedWidget extends StatelessWidget {
  final String title;
  const RecommendedWidget({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: size19,
        ),
        const Icon(Icons.more_horiz, color: Colors.grey),
      ],
    );
  }
}
