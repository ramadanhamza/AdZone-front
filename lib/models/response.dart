import 'package:adzone/models/user.dart';

class ResponseModel {
  ResponseModel({this.success, this.message});
  bool success;
  String message;
  factory ResponseModel.fromJson(Map<String, dynamic> json) => ResponseModel(
        success: json["success"],
        message: json["msg"],
        // user: User.fromJson(json["user"]),
      );
  Map<String, dynamic> toJson() => {
        "success": success,
        "msg": message,
      };
}
