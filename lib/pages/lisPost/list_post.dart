import 'package:flutter/material.dart';
import '../../constants/size_config.dart';
import '../../models/post.dart';
import 'widget/km.dart';
import 'widget/price.dart';

class ListPost extends StatelessWidget {
  final Post post;
  final Function press;

  const ListPost({
    Key key,
    this.post,
    this.press,
  }) : super(
          key: key,
        );
  @override
  Widget build(BuildContext context) {
    double defaultSize = SizeConfig.defaultSize;
    return GestureDetector(
      onTap: press,
      child: Stack(
        children: <Widget>[
          Container(
            child: AspectRatio(
              aspectRatio: 4,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(3.0),
                ),
                child: Row(
                  children: <Widget>[
                    AspectRatio(
                      aspectRatio: 0.80,
                      child: Image.asset(
                        post.imageFlag,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                        vertical: 15,
                        horizontal: 10,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Column(
                                children: [
                                  Container(
                                    width: 130.0,
                                    child: Text(
                                      post.namePost,
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: Color(0xFF273147),
                                      ),
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                width: 90,
                              ),
                              Column(
                                children: <Widget>[
                                  buildPrice(
                                    context,
                                    defaultSize,
                                    price: "R\$ ${post.price}",
                                  ),
                                  Text(
                                    "Há ${post.time} hrs atrás",
                                    style: TextStyle(
                                      fontSize: 10.0,
                                      color: Colors.green,
                                    ),
                                    overflow: TextOverflow.ellipsis,
                                    maxLines: 1,
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Container(
                                width: 140.0,
                                child: Text(
                                  post.street,
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.black45,
                                  ),
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                              buildKm(
                                context,
                                defaultSize,
                                km: "${post.km} km",
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
