abstract class OraChatStates {}

class AppInitialState extends OraChatStates {}

class LoadingChatState extends OraChatStates {}

class SuccessfulLoadChatState extends OraChatStates {}

class ErrorLoadChatState extends OraChatStates {
  String error;
  ErrorLoadChatState(this.error);
}
