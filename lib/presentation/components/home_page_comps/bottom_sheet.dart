import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class BottomSheetWidget extends StatelessWidget {
  const BottomSheetWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        ListTile(
          leading: SizedBox(
            width: 40.w,
            child: SvgPicture.asset(
              "assets/images/Group 114.svg",
            ),
          ),
          title: Text("Information Technology"),
          subtitle: Text("23 Experts"),
          trailing: Icon(Icons.arrow_forward_ios),
        ),
        ListTile(
          leading: SizedBox(
            width: 40.w,
            child: SvgPicture.asset(
              "assets/images/Group 115.svg",
            ),
          ),
          title: Text("Supply Chain"),
          subtitle: Text("12 Experts"),
          trailing: Icon(Icons.arrow_forward_ios),
        ),
        ListTile(
          leading: SizedBox(
            width: 40.w,
            child: SvgPicture.asset(
              "assets/images/Group 116.svg",
            ),
          ),
          title: Text("Security"),
          subtitle: Text("14 Experts"),
          trailing: Icon(Icons.arrow_forward_ios),
        ),
        ListTile(
          leading: SizedBox(
            width: 40.w,
            child: SvgPicture.asset(
              "assets/images/Group 117.svg",
            ),
          ),
          title: Text("Human Resource"),
          subtitle: Text("12 Experts"),
          trailing: Icon(Icons.arrow_forward_ios),
        ),
        ListTile(
          leading: SizedBox(
            width: 40.w,
            child: SvgPicture.asset(
              "assets/images/Group 118.svg",
            ),
          ),
          title: Text("Immigration"),
          subtitle: Text("14 Experts"),
          trailing: Icon(Icons.arrow_forward_ios),
        ),
        ListTile(
          leading: SizedBox(
            width: 40.w,
            child: SvgPicture.asset(
              "assets/images/Group 119.svg",
            ),
          ),
          title: Text("Translation"),
          subtitle: Text("23 Experts"),
          trailing: Icon(Icons.arrow_forward_ios),
        ),
      ],
    );
  }
}
