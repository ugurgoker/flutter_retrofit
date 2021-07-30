import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart' hide Headers;
import 'package:retrofit_example/models/model_corporation.dart';
import 'package:retrofit_example/models/model_login.dart';
import 'package:retrofit_example/models/model_login_response.dart';
import 'package:retrofit_example/models/response_data.dart';

part 'service_api.g.dart';

@RestApi(baseUrl: '')
abstract class ServiceApi {
  factory ServiceApi(Dio dio, {String baseUrl}) = _ServiceApi;

  @POST('Auth/login')
  Future<ResponseData<LoginResponseModel, LoginResponseModel>> login(@Body() LoginModel model);

  @GET('Corporation')
  Future<ResponseData<List<CorporationModel>, CorporationModel>> getCorporations(@Header('Authorization') String token);
}