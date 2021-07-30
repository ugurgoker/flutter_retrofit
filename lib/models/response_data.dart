import 'package:dart_json_mapper/dart_json_mapper.dart' show JsonMapper, JsonMapperAdapter, JsonProperty, jsonSerializable, typeOf;

@jsonSerializable
class ResponseData<T, S> {
  final int? responseDataType;
  final int? totalRowCount;
  final String? code;
  final String? message;
  final DateTime? serverTime;
  T? result;

  ResponseData({this.responseDataType, this.totalRowCount, this.code, this.message, this.serverTime, this.result});


  factory ResponseData.fromJson(Map<String, dynamic> json) {
    if (T.toString().contains('List<'))
      JsonMapper().useAdapter(JsonMapperAdapter(valueDecorators: {typeOf<T>(): (value) => value.ecast<S>()}));
    return ResponseData<T, S>(
      responseDataType: json['responseDataType'],
      totalRowCount: json['totalRowCount'],
      code: json['code'],
      message: json['message'],
      serverTime: DateTime.parse(json['serverTime']),
      result: JsonMapper.deserialize<T>(json['result']),
    );
  }

  
  Map<String, dynamic> toJson() => JsonMapper.serialize(this) as Map<String, dynamic>;
}