import 'package:newsapp/api/apiurl.dart';
import 'package:newsapp/models/post_model.dart';

class PostProvider {
  void getPostlist({
    Function() beforesend,
    Function(List<Posts> posts) onSuccess,
    Function(dynamic error) onError,
  }) {
    Api(urllink: 'https://jsonplaceholder.typicode.com/posts', data: null).get(
      beforesend: () => {if (beforesend != null) beforesend()},
      onsuccess: (data) {
        onSuccess((data as List)
            .map((postJson) => Posts.fromJson(postJson))
            .toList());
      },
      onError: (error) => {if (onError != null) onError(error)},
    );
  }
}
