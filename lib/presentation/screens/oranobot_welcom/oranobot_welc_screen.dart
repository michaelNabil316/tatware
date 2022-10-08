import 'package:assignment/presentation/shared/navigate.dart';
import 'package:flutter/material.dart';
import '../../components/custom_button.dart';
import '../../components/translation_widget.dart';
import '../../shared/style.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../oranobot_chat/oranobot_chat_screen.dart';

class OranobotPage extends StatelessWidget {
  const OranobotPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          SizedBox(height: 161.h),
          SizedBox(
            width: width,
            child: Stack(
              children: [
                Center(
                  child: Image(
                    image: const AssetImage("assets/images/line_image.PNG"),
                    fit: BoxFit.fill,
                    width: 322.h,
                    height: 255.h,
                  ),
                ),
                Row(
                  children: [
                    SizedBox(width: 95.w),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 30.h),
                        Row(
                          children: [
                            Text("Hi, my name is ", style: size19),
                            Text(
                              "Oranobot",
                              style:
                                  size19.copyWith(fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        Text("I will always be there to help", style: size19),
                        Text("and assist you.", style: size19),
                        SizedBox(height: 30.h),
                        Text("Say Start To go to Next.", style: size19),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          Center(
            child: Image(
              image: const AssetImage("assets/images/oranobot.PNG"),
              fit: BoxFit.fill,
              width: 242.h,
              height: 300.h,
            ),
          ),
          SizedBox(height: 25.h),
          CustomMainBTN(
              text: "Next",
              onClick: () => navigateTo(context, const OranobotChatPage()),
              horizPadding: 54.w),
          SizedBox(height: 55.h),
          const TranslationWidget()
        ],
      ),
    );
  }
}
