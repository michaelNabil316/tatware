import 'package:assignment/presentation/shared/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ListTileCheck extends StatefulWidget {
  final String title;
  const ListTileCheck({Key? key, required this.title}) : super(key: key);

  @override
  State<ListTileCheck> createState() => _ListTileCheckState();
}

class _ListTileCheckState extends State<ListTileCheck> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Row(
        children: [
          SizedBox(width: 70.h),
          isChecked
              ? Icon(
                  Icons.check_circle,
                  color: mainColor,
                  size: 40.sp,
                )
              : CircleAvatar(
                  radius: 20.sp,
                  backgroundColor: sendMesgBac,
                ),
          SizedBox(width: 16.h),
          Text(widget.title),
        ],
      ),
      onTap: () {
        setState(() {
          isChecked = !isChecked;
        });
      },
    );

    // ListTile(
    //   onTap: () {
    //     setState(() {
    //       isChecked = !isChecked;
    //     });
    //   },
    //   leading: isChecked
    //       ? Icon(Icons.check_circle, color: mainColor)
    //       : Icon(Icons.check_circle_outline),
    //   title: Text(widget.title),

    // );
  }
}
