class User {
  String id;
  String name;
  String username;
  String email;
  String phone;
  List<String> blockersID;
  List<String> followingID;
  List<String> followersID;
  DateTime createTime;
  DateTime updateTime;
  DateTime lastSeen;

  User({
    required this.id,
    required this.name,
    required this.username,
    required this.email,
    required this.phone,
    required this.blockersID,
    required this.followingID,
    required this.followersID,
    required this.createTime,
    required this.updateTime,
    required this.lastSeen,
  });

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'username': username,
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

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      id: json['id'],
      name: json['name'],
      username: json['username'],
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
}