import 'dart:developer';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../Data/services/api/ora_chat_api.dart';
import '../../presentation/models/chat_model.dart';
import 'state.dart';

class OraChatBloc extends Cubit<OraChatStates> {
  OraChatBloc() : super(AppInitialState());
  static OraChatBloc get(context) => BlocProvider.of(context);
  OraChatApi oraChatApi = OraChatApi();
  List<ChatItem> chatList = [];
  Future getOraChat() async {
    emit(LoadingChatState());
    try {
      final response = await oraChatApi.getChatData();
      await Future.delayed(const Duration(seconds: 2));
      if (!response!['error']) {
        chatList = [];
        for (var el in response['value']['chat']) {
          chatList.add(ChatItem.fromJson(el));
        }
        emit(SuccessfulLoadChatState());
      }
    } catch (error) {
      log("getOraChat error: $error");
      emit(ErrorLoadChatState(error.toString()));
    }
  }
}
