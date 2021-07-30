import 'dart:convert';

import 'package:dart_json_mapper/dart_json_mapper.dart' show JsonMapper, JsonMapperAdapter, JsonProperty, jsonSerializable, typeOf;

@jsonSerializable 
class CorporationModel {
  final String? id;

  CorporationModel({this.id});

  factory CorporationModel.fromJson(Map<String, dynamic> json) => JsonMapper.deserialize<CorporationModel>(jsonEncode(json)) as CorporationModel;
  Map<String, dynamic> toJson() => jsonDecode(JsonMapper.serialize(this));
}