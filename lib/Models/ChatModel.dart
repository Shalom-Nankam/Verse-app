class ChatModel {
  String? avatar;
  String? username;
  String? status;

  ChatModel(
      {required this.avatar, required this.username, required this.status});

  factory ChatModel.fromJson(Map<String, String> json) {
    return ChatModel(
        avatar: json["Avatar"],
        username: json["Username"],
        status: json["Status"]
        );
  }
}
