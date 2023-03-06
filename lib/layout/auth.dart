import 'package:get/get.dart';

const publicRoutes = ["/login", "sign-up", "/", "/otp"];

void routingCallback(Routing? routing) {
  if (!publicRoutes.contains(routing?.current)) {
    Get.until((route) => false);
  }
}
