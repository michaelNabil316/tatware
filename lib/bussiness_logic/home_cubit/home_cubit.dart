import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'home_states.dart';

class HomeBloc extends Cubit<HomeStates> {
  HomeBloc() : super(HomeInitial());
  static HomeBloc get(context) => BlocProvider.of(context);
  int currendBottom = 0;

  changeCurrentIndex(value) {
    currendBottom = value;
    emit(HomeChangedScreenState());
  }

  List<BottomNavigationBarItem> bottomNavItems = [
    BottomNavigationBarItem(
        icon: SizedBox(
            width: 20.w,
            child: SvgPicture.asset(
              "assets/images/Home.svg",
            )),
        label: ""),
    BottomNavigationBarItem(
        icon: SizedBox(
            width: 20.w,
            child: SvgPicture.asset(
              "assets/images/Star.svg",
            )),
        label: ""),
    BottomNavigationBarItem(
        icon: SizedBox(
            width: 20.w,
            child: SvgPicture.asset(
              "assets/images/Wallet.svg",
            )),
        label: ""),
    BottomNavigationBarItem(
        icon: SizedBox(
            width: 20.w,
            child: SvgPicture.asset(
              "assets/images/Profile.svg",
            )),
        label: ""),
  ];
}
