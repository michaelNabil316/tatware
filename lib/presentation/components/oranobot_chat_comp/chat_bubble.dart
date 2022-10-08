import 'package:assignment/presentation/models/chat_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../shared/style.dart';

class ChatBuble extends StatelessWidget {
  final ChatItem chatItem;
  const ChatBuble({Key? key, required this.chatItem}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: chatItem.isOra ? TextDirection.ltr : TextDirection.rtl,
      child: Row(
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 18.w),
            child: chatItem.isOra
                ? CircleAvatar(
                    radius: 19.w,
                    backgroundColor: sendMesgBac,
                    child: SizedBox(
                      height: 30.sp,
                      child: SvgPicture.asset("assets/images/Group 107.svg"),
                    ),
                  )
                : SizedBox(
                    height: 30.sp,
                    child: SvgPicture.asset("assets/images/Icon.svg"),
                  ),
          ),
          Container(
            width: 260.w,
            padding: EdgeInsets.all(14.w),
            decoration: chatItem.isOra ? oraChatBubble : chatBubble,
            child: Directionality(
              textDirection: TextDirection.ltr,
              child: Text(
                chatItem.text,
                style: TextStyle(
                    color: chatItem.isOra ? Colors.black : Colors.white,
                    fontSize: 14.sp),
              ),
            ),
          )
        ],
      ),
    );
  }
}
