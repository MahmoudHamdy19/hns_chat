class Message{
  String id;
  String chatId;
  String sendId;
  DateTime createDate;
  DateTime updateDate;
  String messageStatus;

  Message({
    required this.id,
    required this.chatId,
    required this.sendId,
    required this.createDate,
    required this.updateDate,
    required this.messageStatus,
  });

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'chatId': chatId,
      'sendId': sendId,
      'createDate': createDate.toIso8601String(),
      'updateDate': updateDate.toIso8601String(),
      'messageStatus': messageStatus,
    };
  }

  factory Message.fromJson(Map<String, dynamic> json) {
    return Message(
      id: json['id'],
      chatId: json['chatId'],
      sendId: json['sendId'],
      createDate: DateTime.parse(json['createDate']),
      updateDate: DateTime.parse(json['updateDate']),
      messageStatus: json['messageStatus'],
    );
  }
}