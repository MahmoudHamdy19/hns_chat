class User {
  final String id;
  final String userName;
  final String email;
  final String phone;
  final List<String> blockersID;
  final List<String> followingID;
  final List<String> followersID;
  final DateTime createTime;
  final DateTime updateTime;
  final DateTime lastSeen;

  User({
    required this.id,
    required this.userName,
    required this.email,
    required this.phone,
    required this.blockersID,
    required this.followingID,
    required this.followersID,
    required this.createTime,
    required this.updateTime,
    required this.lastSeen,
  });

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      id: json['id'],
      userName: json['userName'],
      email: json['email'],
      phone: json['phone'],
      blockersID: List<String>.from(json['blockersID']),
      followingID: List<String>.from(json['followingID']),
      followersID: List<String>.from(json['followersID']),
      createTime: DateTime.parse(json['createTime']),
      updateTime: DateTime.parse(json['updateTime']),
      lastSeen: DateTime.parse(json['lastSeen']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'userName': userName,
      'email': email,
      'phone': phone,
      'blockersID': blockersID,
      'followingID': followingID,
      'followersID': followersID,
      'createTime': createTime.toIso8601String(),
      'updateTime': updateTime.toIso8601String(),
      'lastSeen': lastSeen.toIso8601String(),
    };
  }
}