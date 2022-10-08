import 'package:assignment/presentation/shared/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../bussiness_logic/oranobot_bloc/bloc.dart';
import '../../../bussiness_logic/oranobot_bloc/state.dart';
import '../../components/oranobot_chat_comp/chat_bubble.dart';
import '../../components/oranobot_chat_comp/multi_check_widget.dart';
import '../../components/oranobot_chat_comp/send_message_widget.dart';

class OranobotChatPage extends StatefulWidget {
  const OranobotChatPage({Key? key}) : super(key: key);

  @override
  State<OranobotChatPage> createState() => _OranobotChatPageState();
}

class _OranobotChatPageState extends State<OranobotChatPage> {
  TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return BlocProvider<OraChatBloc>(
      create: (BuildContext context) => OraChatBloc()..getOraChat(),
      child: BlocConsumer<OraChatBloc, OraChatStates>(
          listener: (context, state) {},
          builder: (context, state) {
            final oraChatBloc = BlocProvider.of<OraChatBloc>(context);
            return Scaffold(
              backgroundColor: Colors.white,
              body: SafeArea(
                  child: Column(
                children: [
                  Expanded(
                      child: state is LoadingChatState
                          ? const Center(
                              child:
                                  CircularProgressIndicator(color: mainColor),
                            )
                          : SingleChildScrollView(
                              child: Container(
                                margin: EdgeInsets.only(top: 30.h),
                                child: ListView(
                                  shrinkWrap: true,
                                  physics: const NeverScrollableScrollPhysics(),
                                  children: [
                                    ListView.separated(
                                        shrinkWrap: true,
                                        physics:
                                            const NeverScrollableScrollPhysics(),
                                        itemBuilder: (ctx, index) => ChatBuble(
                                            chatItem:
                                                oraChatBloc.chatList[index]),
                                        separatorBuilder: (ctx, index) =>
                                            SizedBox(
                                              height: 30.h,
                                            ),
                                        itemCount: oraChatBloc.chatList.length),
                                    const MultiCheck(),
                                    Center(
                                      child: Text(
                                          "Say Done or press send button",
                                          style: lightDarkTxtStyle),
                                    ),
                                  ],
                                ),
                              ),
                            )),
                  SendMessage(controller: controller)
                ],
              )),
            );
          }),
    );
  }
}
