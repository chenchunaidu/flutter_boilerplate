import 'package:get/get.dart';

const publicRoutes = ["/login", "sign-up", "/"];

void routingCallback(Routing? routing) {
  if (!publicRoutes.contains(routing?.current)) {
    print(routing?.current);
    // Get.to("/login");
    // Get.until((route) => false).preventNavigation();
  }
}
