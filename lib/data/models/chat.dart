class Chat {
  String id;
  bool typing;
  List<String> usersID;
  String lastMessage;
  int unreadMessages;
  DateTime lastMessageDate;

  Chat({
    required this.id,
    required this.typing,
    required this.usersID,
    required this.lastMessage,
    required this.unreadMessages,
    required this.lastMessageDate,
  });

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'typing': typing,
      'usersID': usersID,
      'lastMessage': lastMessage,
      'unreadMessages': unreadMessages,
      'lastMessageDate': lastMessageDate.toIso8601String(),
    };
  }

  factory Chat.fromJson(Map<String, dynamic> json) {
    return Chat(
      id: json['id'],
      typing: json['typing'],
      usersID: List<String>.from(json['usersID']),
      lastMessage: json['lastMessage'],
      unreadMessages: json['unreadMessages'],
      lastMessageDate: DateTime.parse(json['lastMessageDate']),
    );
  }
}