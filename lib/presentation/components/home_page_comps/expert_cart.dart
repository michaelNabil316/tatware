import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../shared/style.dart';

class ExpertCart extends StatelessWidget {
  final String url;
  const ExpertCart({Key? key, required this.url}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: textFormDec,
      width: 185.w,
      height: 242.h,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(10), topRight: Radius.circular(10)),
            child: Image(
              image: AssetImage("assets/images/$url.PNG"),
              width: 185.w,
              height: 151.h,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(height: 5.h),
          Row(
            children: [
              SizedBox(width: 5.w),
              const Icon(Icons.star, color: Colors.amber),
              SizedBox(width: 5.w),
              const Text("(5.0)"),
              const Spacer(),
              const Icon(Icons.favorite, color: Colors.grey),
              SizedBox(width: 5.w),
            ],
          ),
          SizedBox(height: 5.h),
          Padding(
            padding: EdgeInsets.only(left: 14.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Michael Nabil", style: size15),
                SizedBox(height: 5.h),
                Text("Suply Chain", style: lightDarkTxtStyle),
              ],
            ),
          )
        ],
      ),
    );
  }
}
