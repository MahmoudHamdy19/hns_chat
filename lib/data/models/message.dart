class Message {
  final String id;
  final String chatId;
  final String senderId;
  final DateTime createDate;
  final DateTime updateDate;
  final String messageStatus;

  Message({
    required this.id,
    required this.chatId,
    required this.senderId,
    required this.createDate,
    required this.updateDate,
    required this.messageStatus,
  });

  factory Message.fromJson(Map<String, dynamic> json) {
    return Message(
      id: json['id'],
      chatId: json['chatId'],
      senderId: json['senderId'],
      createDate: DateTime.parse(json['createDate']),
      updateDate: DateTime.parse(json['updateDate']),
      messageStatus: json['messageStatus'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'chatId': chatId,
      'senderId': senderId,
      'createDate': createDate.toIso8601String(),
      'updateDate': updateDate.toIso8601String(),
      'messageStatus': messageStatus,
    };
  }
}