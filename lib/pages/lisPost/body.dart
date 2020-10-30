import 'package:app_posto_v1/models/post.dart';
import 'package:flutter/material.dart';
import '../../constants/size_config.dart';
import '../post/post_info.dart';
import 'list_post.dart';
import 'widget/categories.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: <Widget>[
          Categories(),
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: SizeConfig.defaultSize * 0.5,
              ),
              child: Expanded(
                child: GridView.builder(
                  itemCount: post.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 1,
                    mainAxisSpacing: 2,
                    childAspectRatio: 4,
                  ),
                  itemBuilder: (context, index) => ListPost(
                    post: post[index],
                    press: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => PostInfo(
                          post: post[index],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
