import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../components/custom_button.dart';
import '../../components/start_page_comps/ball.dart';
import '../../components/translation_widget.dart';
import '../../shared/navigate.dart';
import '../../shared/style.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../oranobot_welcom/oranobot_welc_screen.dart';

class StartPage extends StatelessWidget {
  const StartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: startBackgroudDec,
      child: Column(
        children: [
          SizedBox(height: 403.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(
                width: 184.w,
                height: 45.h,
                child: SvgPicture.asset("assets/images/Component21.svg",
                    fit: BoxFit.fill),
              ),
              const CircleBall(color: mainColor),
            ],
          ),
          SizedBox(height: 14.h),
          Text("Expert From Every Planet", style: subTitleTextStyle),
          SizedBox(height: 270.h),
          CustomMainBTN(
            text: "Get Started",
            onClick: () => navigateTo(context, const OranobotPage()),
            horizPadding: 117.w,
          ),
          SizedBox(height: 21.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Don't have an account?", style: dontTxtStyle),
              Text(" SignUp", style: signUpTxtStyle),
            ],
          ),
          SizedBox(height: 10.h),
          const TranslationWidget(),
        ],
      ),
    ));
  }
}
