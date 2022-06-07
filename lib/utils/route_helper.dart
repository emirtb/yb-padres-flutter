import 'package:get/get.dart';
import 'package:yb_padre/screens/login-register/login_page.dart';

class RouteHelper {
  static const String initial = '/';
  static const String login = '/login';
  static String getLogin() => '$login';
  static List<GetPage> routes = [
    // GetPage(
    //     name: initial,
    //     page: () {
    //       print("GetPage MainPage F:home");
    //       return MainPage();
    //     },
    //     transition: Transition.fadeIn),
    GetPage(
        name: login,
        page: () {
          print("GetPage Login F:home");
          return LoginPage();
        },
        transition: Transition.fadeIn),
  ];
}
