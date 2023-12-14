class Chat {
  final String id;
  final bool typing;
  final List<String> userIds;
  final String lastMessage;
  final int unreadMessages;
  final DateTime lastMessageDate;

  Chat({
    required this.id,
    required this.typing,
    required this.userIds,
    required this.lastMessage,
    required this.unreadMessages,
    required this.lastMessageDate,
  });

  factory Chat.fromJson(Map<String, dynamic> json) {
    return Chat(
      id: json['id'],
      typing: json['typing'],
      userIds: List<String>.from(json['userIds']),
      lastMessage: json['lastMessage'],
      unreadMessages: json['unreadMessages'],
      lastMessageDate: DateTime.parse(json['lastMessageDate']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'typing': typing,
      'userIds': userIds,
      'lastMessage': lastMessage,
      'unreadMessages': unreadMessages,
      'lastMessageDate': lastMessageDate.toIso8601String(),
    };
  }
}