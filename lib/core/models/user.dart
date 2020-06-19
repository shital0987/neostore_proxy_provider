
////// To parse this JSON data, do
//////
//////     final user = userFromJson(jsonString);
////
////import 'dart:convert';
////
////User userFromJson(String str) => User.fromJson(json.decode(str));
////
////String userToJson(User data) => json.encode(data.toJson());
////
////class User {
////  User({
////    this.id,
////    this.roleId,
////    this.firstName,
////    this.lastName,
////    this.email,
////    this.username,
////    this.gender,
////    this.phoneNo,
////    this.isActive,
////    this.created,
////    this.modified,
////    this.accessToken,
////  });
////
////  int id;
////  int roleId;
////  String firstName;
////  String lastName;
////  String email;
////  String username;
////  String gender;
////  int phoneNo;
////  bool isActive;
////  String created;
////  String modified;
////  String accessToken;
////
////  factory User.fromJson(Map<String, dynamic> json) => User(
////    id: json["id"],
////    roleId: json["role_id"],
////    firstName: json["first_name"],
////    lastName: json["last_name"],
////    email: json["email"],
////    username: json["username"],
////    gender: json["gender"],
////    phoneNo: json["phone_no"],
////    isActive: json["is_active"],
////    created: json["created"],
////    modified: json["modified"],
////    accessToken: json["access_token"],
////  );
////
////  Map<String, dynamic> toJson() => {
////    "id": id,
////    "role_id": roleId,
////    "first_name": firstName,
////    "last_name": lastName,
////    "email": email,
////    "username": username,
////    "gender": gender,
////    "phone_no": phoneNo,
////    "is_active": isActive,
////    "created": created,
////    "modified": modified,
////    "access_token": accessToken,
////  };
////}
////
////
////
////
////
////
////
////
////
////
////
////
////
////
////
////
////
////
////
////
////
////
////
////
//////import 'dart:convert';
//////
//////User userFromJson(String str) => User.fromJson(json.decode(str));
//////
//////String userToJson(User data) => json.encode(data.toJson());
//////
//////class User {
//////  User({
//////    this.status,
//////    this.data,
//////    this.message,
//////    this.userMsg,
//////  });
//////
//////  int status;
//////  List<UserData> data;
//////  String message;
//////  String userMsg;
//////
//////  factory User.fromJson(Map<String, dynamic> json) => User(
//////    status: json["status"],
//////    data: List<UserData>.from(json["data"].map((x) => UserData.fromJson(x))),
//////    message: json["message"],
//////    userMsg: json["user_msg"],
//////  );
//////
//////  Map<String, dynamic> toJson() => {
//////    "status": status,
//////    "data": List<dynamic>.from(data.map((x) => x.toJson())),
//////    "message": message,
//////    "user_msg": userMsg,
//////  };
//////}
//////
//////class UserData {
//////  UserData({
//////    this.id,
//////    this.roleId,
//////    this.firstName,
//////    this.lastName,
//////    this.email,
//////    this.username,
//////    this.gender,
//////    this.phoneNo,
//////    this.isActive,
//////    this.created,
//////    this.modified,
//////    this.accessToken,
//////  });
//////
//////  int id;
//////  int roleId;
//////  String firstName;
//////  String lastName;
//////  String email;
//////  String username;
//////  String gender;
//////  int phoneNo;
//////  bool isActive;
//////  String created;
//////  String modified;
//////  String accessToken;
//////
//////  factory UserData.fromJson(Map<String, dynamic> json) => UserData(
//////    id: json["id"],
//////    roleId: json["role_id"],
//////    firstName: json["first_name"],
//////    lastName: json["last_name"],
//////    email: json["email"],
//////    username: json["username"],
//////    gender: json["gender"],
//////    phoneNo: json["phone_no"],
//////    isActive: json["is_active"],
//////    created: json["created"],
//////    modified: json["modified"],
//////    accessToken: json["access_token"],
//////  );
//////
//////  Map<String, dynamic> toJson() => {
//////    "id": id,
//////    "role_id": roleId,
//////    "first_name": firstName,
//////    "last_name": lastName,
//////    "email": email,
//////    "username": username,
//////    "gender": gender,
//////    "phone_no": phoneNo,
//////    "is_active": isActive,
//////    "created": created,
//////    "modified": modified,
//////    "access_token": accessToken,
//////  };
//////}
////
////
////// To parse this JSON data, do
//////
//////     final user = userFromJson(jsonString);
////
//////import 'dart:convert';
//////
//////User userFromJson(String str) => User.fromJson(json.decode(str));
//////
//////String userToJson(User data) => json.encode(data.toJson());
//////
//////class User {
//////  User({
//////    this.status,
//////    this.data,
//////    this.message,
//////    this.userMsg,
//////  });
//////
//////  int status;
//////  List<Datum> data;
//////  String message;
//////  String userMsg;
//////
//////  factory User.fromJson(Map<String, dynamic> json) => User(
//////    status: json["status"],
//////    data: List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
//////    message: json["message"],
//////    userMsg: json["user_msg"],
//////  );
//////
//////  Map<String, dynamic> toJson() => {
//////    "status": status,
//////    "data": List<dynamic>.from(data.map((x) => x.toJson())),
//////    "message": message,
//////    "user_msg": userMsg,
//////  };
//////}
//////
//////class Datum {
//////  Datum({
//////    this.id,
//////    this.roleId,
//////    this.firstName,
//////    this.lastName,
//////    this.email,
//////    this.username,
//////    this.gender,
//////    this.phoneNo,
//////    this.isActive,
//////    this.created,
//////    this.modified,
//////    this.accessToken,
//////  });
//////
//////  int id;
//////  int roleId;
//////  String firstName;
//////  String lastName;
//////  String email;
//////  String username;
//////  String gender;
//////  int phoneNo;
//////  bool isActive;
//////  String created;
//////  String modified;
//////  String accessToken;
//////
//////  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
//////    id: json["id"],
//////    roleId: json["role_id"],
//////    firstName: json["first_name"],
//////    lastName: json["last_name"],
//////    email: json["email"],
//////    username: json["username"],
//////    gender: json["gender"],
//////    phoneNo: json["phone_no"],
//////    isActive: json["is_active"],
//////    created: json["created"],
//////    modified: json["modified"],
//////    accessToken: json["access_token"],
//////  );
//////
//////  Map<String, dynamic> toJson() => {
//////    "id": id,
//////    "role_id": roleId,
//////    "first_name": firstName,
//////    "last_name": lastName,
//////    "email": email,
//////    "username": username,
//////    "gender": gender,
//////    "phone_no": phoneNo,
//////    "is_active": isActive,
//////    "created": created,
//////    "modified": modified,
//////    "access_token": accessToken,
//////  };
//////}
//
//
//// To parse this JSON data, do
////
////     final user = userFromJson(jsonString);
//
//import 'dart:convert';
//
//User userFromJson(String str) => User.fromJson(json.decode(str));
//
//String userToJson(User data) => json.encode(data.toJson());
//
//class User {
//  User({
//    this.status,
//    this.result,
//    this.message,
//    this.userMsg,
//  });
//
//  int status;
//  List<UserData> result;
//  String message;
//  String userMsg;
//
//  factory User.fromJson(Map<String, dynamic> json) => User(
//    status: json["status"],
//    result: List<UserData>.from(json["data"].map((x) => UserData.fromJson(x))),
//    message: json["message"],
//    userMsg: json["user_msg"],
//  );
//
//  Map<String, dynamic> toJson() => {
//    "status": status,
//    "data": List<dynamic>.from(result.map((x) => x.toJson())),
//    "message": message,
//    "user_msg": userMsg,
//  };
//}
//
//class UserData {
//  UserData({
//    this.id,
//    this.roleId,
//    this.firstName,
//    this.lastName,
//    this.email,
//    this.username,
//    this.gender,
//    this.phoneNo,
//    this.isActive,
//    this.created,
//    this.modified,
//    this.accessToken,
//  });
//
//  int id;
//  int roleId;
//  String firstName;
//  String lastName;
//  String email;
//  String username;
//  String gender;
//  int phoneNo;
//  bool isActive;
//  String created;
//  String modified;
//  String accessToken;
//
//  factory UserData.fromJson(Map<String, dynamic> json) => UserData(
//    id: json["id"],
//    roleId: json["role_id"],
//    firstName: json["first_name"],
//    lastName: json["last_name"],
//    email: json["email"],
//    username: json["username"],
//    gender: json["gender"],
//    phoneNo: json["phone_no"],
//    isActive: json["is_active"],
//    created: json["created"],
//    modified: json["modified"],
//    accessToken: json["access_token"],
//  );
//
//  Map<String, dynamic> toJson() => {
//    "id": id,
//    "role_id": roleId,
//    "first_name": firstName,
//    "last_name": lastName,
//    "email": email,
//    "username": username,
//    "gender": gender,
//    "phone_no": phoneNo,
//    "is_active": isActive,
//    "created": created,
//    "modified": modified,
//    "access_token": accessToken,
//  };
//}
import 'dart:convert';

User userFromJson(String str) => User.fromJson(json.decode(str));

String userToJson(User data) => json.encode(data.toJson());

class User {
  User({
    this.status,
    //this.result,
    this.message,
    this.userMsg,
  });

  int status;
  //List<UserData> result;
  String message;
  String userMsg;

  factory User.fromJson(Map<String, dynamic> json) => User(
    status: json["status"],
    //result: List<UserData>.from(json["data"].map((x) => UserData.fromJson(x))),
    message: json["message"],
    userMsg: json["user_msg"],
  );

  Map<String, dynamic> toJson() => {
    "status": status,
   // "data": List<dynamic>.from(result.map((x) => x.toJson())),
    "message": message,
    "user_msg": userMsg,
  };
}

class UserData {
  UserData({
    this.id,
    this.roleId,
    this.firstName,
    this.lastName,
    this.email,
    this.username,
    this.gender,
    this.phoneNo,
    this.isActive,
    this.created,
    this.modified,
    this.accessToken,
  });

  int id;
  int roleId;
  String firstName;
  String lastName;
  String email;
  String username;
  String gender;
  int phoneNo;
  bool isActive;
  String created;
  String modified;
  String accessToken;

  factory UserData.fromJson(Map<String, dynamic> json) => UserData(
    id: json["id"],
    roleId: json["role_id"],
    firstName: json["first_name"],
    lastName: json["last_name"],
    email: json["email"],
    username: json["username"],
    gender: json["gender"],
    phoneNo: json["phone_no"],
    isActive: json["is_active"],
    created: json["created"],
    modified: json["modified"],
    accessToken: json["access_token"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "role_id": roleId,
    "first_name": firstName,
    "last_name": lastName,
    "email": email,
    "username": username,
    "gender": gender,
    "phone_no": phoneNo,
    "is_active": isActive,
    "created": created,
    "modified": modified,
    "access_token": accessToken,
  };
}
