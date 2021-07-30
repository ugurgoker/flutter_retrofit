// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'service_api.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

class _ServiceApi implements ServiceApi {
  _ServiceApi(this._dio, {this.baseUrl});

  final Dio _dio;

  String? baseUrl;

  @override
  Future<ResponseData<LoginResponseModel, LoginResponseModel>> login(
      model) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(model.toJson());
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<ResponseData<LoginResponseModel, LoginResponseModel>>(
            Options(method: 'POST', headers: <String, dynamic>{}, extra: _extra)
                .compose(_dio.options, 'Auth/login',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = ResponseData<LoginResponseModel, LoginResponseModel>.fromJson(
        _result.data!);
    return value;
  }

  @override
  Future<ResponseData<List<CorporationModel>, CorporationModel>>
      getCorporations(token) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<ResponseData<List<CorporationModel>, CorporationModel>>(
            Options(
                    method: 'GET',
                    headers: <String, dynamic>{r'Authorization': token},
                    extra: _extra)
                .compose(_dio.options, 'Corporation',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value =
        ResponseData<List<CorporationModel>, CorporationModel>.fromJson(
            _result.data!);
    return value;
  }

  RequestOptions _setStreamType<T>(RequestOptions requestOptions) {
    if (T != dynamic &&
        !(requestOptions.responseType == ResponseType.bytes ||
            requestOptions.responseType == ResponseType.stream)) {
      if (T == String) {
        requestOptions.responseType = ResponseType.plain;
      } else {
        requestOptions.responseType = ResponseType.json;
      }
    }
    return requestOptions;
  }
}
