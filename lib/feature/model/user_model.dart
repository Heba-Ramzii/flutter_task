class UserModel {
  final String partnerCode;
  final String userName;
  final String password;
  final int langId;

  UserModel({
    required this.partnerCode,
    required this.userName,
    required this.password,
    required this.langId,
  });

  Map<String, dynamic> toJson() {
    return {
      'partnerCode': partnerCode,
      'userName': userName,
      'password': password,
      'langId': langId,
    };
  }
}
