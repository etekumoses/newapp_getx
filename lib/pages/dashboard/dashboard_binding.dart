import 'package:get/get.dart';
import 'package:newsapp/pages/account/account_controller.dart';
import 'package:newsapp/pages/posts/post_controller.dart';

import 'dashboard_controller.dart';

class DashboardBinding extends Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut<PostController>(() => PostController());

    Get.lazyPut<DashboardController>(() => DashboardController());
    Get.lazyPut<AccountController>(() => AccountController());
  }
}
