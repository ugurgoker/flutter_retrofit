import 'dart:convert';

import 'package:dart_json_mapper/dart_json_mapper.dart' show JsonMapper, JsonMapperAdapter, JsonProperty, jsonSerializable, typeOf;

@jsonSerializable
class LoginModel {
  String? userName;
  String? password;
  String? deviceId;
  String? language;

  LoginModel({this.userName, this.password, this.deviceId, this.language});

  factory LoginModel.fromJson(Map<String, dynamic> json) => JsonMapper.deserialize<LoginModel>(jsonEncode(json)) as LoginModel;
  Map<String, dynamic> toJson() => jsonDecode(JsonMapper.serialize(this));
}
