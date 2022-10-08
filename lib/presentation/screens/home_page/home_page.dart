import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../bussiness_logic/home_cubit/home_cubit.dart';
import '../../../bussiness_logic/home_cubit/home_states.dart';
import '../../components/home_page_comps/bottom_sheet.dart';
import '../../components/home_page_comps/circ_friends_chat.dart';
import '../../components/home_page_comps/custom_app_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../components/home_page_comps/expert_cart.dart';
import '../../components/home_page_comps/recomended_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider<HomeBloc>(
        create: (BuildContext context) => HomeBloc(),
        child: BlocConsumer<HomeBloc, HomeStates>(
            listener: (context, state) {},
            builder: (context, state) {
              final homeBloc = BlocProvider.of<HomeBloc>(context);
              return Scaffold(
                backgroundColor: Colors.white,
                appBar: const CustomAppBar(isHomePage: true),
                body: SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 14.w),
                    child: Column(children: [
                      SizedBox(height: 12.h),
                      const RecommendedWidget(title: "Recommended Experts"),
                      SizedBox(height: 12.h),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ExpertCart(url: "profile_image1"),
                          ExpertCart(url: "profile_image"),
                        ],
                      ),
                      SizedBox(height: 12.h),
                      const RecommendedWidget(title: "Online Experts"),
                      SizedBox(height: 12.h),
                      SizedBox(
                        height: 93.h,
                        child: ListView.separated(
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (ctx, index) => CircleFriendChat(),
                            separatorBuilder: (ctx, index) =>
                                SizedBox(width: 19.w),
                            itemCount: 6),
                      ),
                    ]),
                  ),
                ),
                bottomNavigationBar: BottomNavigationBar(
                  items: homeBloc.bottomNavItems,
                  currentIndex: homeBloc.currendBottom,
                  onTap: (value) => {homeBloc.changeCurrentIndex(value)},
                  backgroundColor: Colors.white,
                  selectedItemColor: Colors.black,
                  unselectedItemColor: Colors.black,
                ),
                bottomSheet: Container(
                  color: Colors.white,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GestureDetector(
                        child: Container(
                          width: 70.w,
                          height: 10,
                          color: Colors.grey,
                        ),
                        onTap: () {
                          showModalBottomSheet(
                              context: context,
                              builder: (BuildContext bc) {
                                return BottomSheetWidget();
                              });
                        },
                      )
                    ],
                  ),
                ),
              );
            }));
  }
}
