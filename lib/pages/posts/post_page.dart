import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:newsapp/pages/components/loadingoverlay.dart';
import 'package:newsapp/pages/posts/post_controller.dart';

import '../../constants.dart';
import 'components/postitem.dart';

class PostPage extends StatelessWidget {
  const PostPage({ Key key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
          centerTitle: true,
          elevation: 0,
          backgroundColor: Constants.COLOR_WHITE,
          title: Text(
            "Posts",
            style: TextStyle(
                // fontFamily: Constants.POPPINS,
                fontWeight: FontWeight.bold,
                fontSize: 22.5,
                color:  Constants.primarycolor),
          ),
          titleSpacing: 0,
          iconTheme: IconThemeData(color: Constants.whitecolor),
          textTheme: Theme.of(context).textTheme,
          brightness: Theme.of(context).brightness,
        ),
      body: Container(
        child: GetBuilder<PostController>(
          builder: (controller) {
            return LoadingOverlay(
              isLoading: controller.isLoading,
              child: ListView.builder(
                itemCount: controller.postsList.length,
                itemBuilder: (context, index) => PostsListItem(
                  post: controller.postsList[index],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}