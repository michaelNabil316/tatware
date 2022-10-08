class ChatItem {
  late String text;
  late bool isOra;
  ChatItem({required this.text, required this.isOra});
  ChatItem.fromJson(Map<String, dynamic> json) {
    isOra = json['is_ora'];
    text = json['text'];
  }
}
