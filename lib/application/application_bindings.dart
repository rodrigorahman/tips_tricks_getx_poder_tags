import 'package:get/get.dart';
import 'package:tips_tricks_getx/application/rest_template.dart';
import 'package:tips_tricks_getx/models/pessoa_model.dart';
import 'package:tips_tricks_getx/repository/i_login_repository.dart';
import 'package:tips_tricks_getx/repository/login_repository.dart';

class ApplicationBindings implements Bindings {
  @override
  void dependencies() {
    Get.put(RestTemplate());
    Get.lazyPut(() => RestTemplate.auth(), tag: RestTemplate.AUTH_TAG);
    Get.lazyPut(() => PessoaModel("Rodrigo", Get.find(tag: RestTemplate.AUTH_TAG)));
    Get.lazyPut(
        () => PessoaModel(
              "Rahman",
              Get.find(tag: RestTemplate.AUTH_TAG),
            ),
        tag: 'rahman');

    Get.lazyPut<ILoginRepository>(() => LoginRepository());
  }
}
