class User {
       String? id;
  String? userName;
  String? email;
  String? phone;
  List<String>? blockersID;
  List<String>? followingID;
  List<String>? followersID;
  DateTime? createTime;
  DateTime? updateTime;
  DateTime? lastSeen;

  User({
           this.id,
    required this.userName,
    required this.email,
    required this.phone,
        this.blockersID,
        this.followingID,
        this.followersID,
        this.createTime,
        this.updateTime,
        this.lastSeen,
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
      'createTime': createTime?.toIso8601String()??DateTime.now().toIso8601String(),
      'updateTime': updateTime?.toIso8601String()??DateTime.now().toIso8601String(),
      'lastSeen': lastSeen?.toIso8601String(),
    };
  }
}