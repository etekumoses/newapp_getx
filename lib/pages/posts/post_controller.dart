import 'package:get/get.dart';
import 'package:newsapp/models/post_model.dart';
import 'package:newsapp/pages/posts/post_provider.dart';

class PostController extends GetxController {
  List<Posts> postsList = [];
  bool isLoading = true;
  @override
  void onInit() {
    // TODO: implement onInit
    PostProvider().getPostlist(beforesend: () {
      print('before sending');
    }, onSuccess: (posts) {
      postsList.addAll(posts);
      isLoading = false;
      update();
      print('success');
    }, onError: (error) {
      isLoading = false;
      update();
      print('error');
    });
    super.onInit();
  }
}
