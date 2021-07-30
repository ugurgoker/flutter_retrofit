import 'package:dio/dio.dart';
import 'package:retrofit_example/main.reflectable.dart';
import 'models/model_login.dart';
import 'services/service_api.dart';


Future<void> main() async {
  initializeReflectable();
  final apiClient = ServiceApi(Dio());

  LoginModel model = LoginModel(userName: '', password: '');

  await apiClient.login(model).then((response) {
    print(response.message);
    
  }).onError((error, stackTrace) {
    print('error');
  });
}












