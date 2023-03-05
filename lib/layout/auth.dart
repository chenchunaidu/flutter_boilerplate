import 'package:get/get.dart';

const publicRoutes = ["/login", "sign-up", "/"];

void routingCallback(Routing? routing) {
  if (!publicRoutes.contains(routing?.current)) {
    Get.until((route) => false);
  }
}
