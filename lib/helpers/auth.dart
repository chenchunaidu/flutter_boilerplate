import 'package:get/get.dart';

const publicRoutes = ["/login", "sign-up", "/", "/otp"];

class AuthController extends GetxController {
  var isAuthenticated = false.obs;
  login() {
    isAuthenticated.value = true;
  }

  logout() {
    isAuthenticated.value = false;
  }
}

void routingCallback(Routing? routing) {
  var isAuthenticated = Get.find<AuthController>().isAuthenticated;
  if (!publicRoutes.contains(routing?.current) && !isAuthenticated.value) {
    Get.until((route) => false);
  }
}
