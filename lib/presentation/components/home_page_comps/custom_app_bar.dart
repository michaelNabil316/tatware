import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../shared/style.dart';
import '../start_page_comps/ball.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomAppBar extends StatelessWidget with PreferredSizeWidget {
  final String? title;
  final bool isHomePage;
  const CustomAppBar({Key? key, this.title, required this.isHomePage})
      : super(key: key);
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        alignment: Alignment.center,
        child: AppBar(
          leading: Container(
            padding: EdgeInsets.all(12.w),
            child: CircleAvatar(
              radius: 12.w,
              backgroundImage:
                  const AssetImage("assets/images/profile_image.PNG"),
            ),
          ),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(
                width: 120.w,
                height: 35.h,
                child: SvgPicture.asset(
                  "assets/images/Component21.svg",
                  fit: BoxFit.fill,
                ),
              ),
              SizedBox(width: 1.w),
              const CircleBall(color: mainColor),
            ],
          ),
          actions: [
            SizedBox(
              width: 20.w,
              child: SvgPicture.asset(
                "assets/images/Search.svg",
              ),
            ),
            SizedBox(width: 10.w)
          ],
        ));
  }
}
