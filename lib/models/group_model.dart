// ignore_for_file: public_member_api_docs, sort_constructors_first

class GroupModel {
  final String senderId;
  final String groupName;
  final String groupId;
  final String lastMessage;
  final String groupPic;
  final List<String> memberUid;
  final DateTime timeSent;

  GroupModel({
    required this.senderId,
    required this.groupName,
    required this.groupId,
    required this.lastMessage,
    required this.groupPic,
    required this.memberUid,
    required this.timeSent,
  });

  

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'senderId': senderId,
      'groupName': groupName,
      'groupId': groupId,
      'lastMessage': lastMessage,
      'groupPic': groupPic,
      'memberUid': memberUid,
      'timeSent': timeSent.millisecondsSinceEpoch,
    };
  }

  factory GroupModel.fromMap(Map<String, dynamic> map) {
    return GroupModel(
      senderId: map['senderId'] as String,
      groupName: map['groupName'] as String,
      groupId: map['groupId'] as String,
      lastMessage: map['lastMessage'] as String,
      groupPic: map['groupPic'] as String,
      memberUid: List<String>.from(map['memberUid'] ),
      timeSent: DateTime.fromMillisecondsSinceEpoch(map['timeSent']),
    );
  }


}
