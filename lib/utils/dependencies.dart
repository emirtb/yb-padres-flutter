import 'package:get/get.dart';
import 'package:yb_padre/screens/login-register/login_page.dart';

class StoreBinding implements Bindings {
// default dependency
  @override
  void dependencies() {
    Get.lazyPut(() => LoginController(), fenix: true);
  }
}
