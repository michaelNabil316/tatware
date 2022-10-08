import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../shared/style.dart';
import '../start_page_comps/ball.dart';

class CircleFriendChat extends StatelessWidget {
  const CircleFriendChat({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          alignment: AlignmentDirectional.topEnd,
          children: [
            CircleAvatar(
              radius: 30.w,
              backgroundColor: chatgrey,
            ),
            Container(
                margin: EdgeInsets.all(5.w),
                child: CircleBall(
                  color: Colors.green,
                )),
          ],
        ),
        SizedBox(height: 3.h),
        Text("name", style: size9gray),
      ],
    );
  }
}
