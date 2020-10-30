import 'package:app_posto_v1/constants/size_config.dart';
import 'package:app_posto_v1/models/post.dart';
import 'package:app_posto_v1/pages/updatePrice/update_price.dart';
import 'package:flutter/material.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

class PostInfo extends StatelessWidget {
  final Post post;

  const PostInfo({
    Key key,
    this.post,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    double defaultSize = SizeConfig.defaultSize;
    return Scaffold(
      backgroundColor: Color(0xFF273147),
      appBar: AppBar(
        backgroundColor: Color(0xFF273147),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Center(
              child: Image.asset(
                post.imageFlag,
                height: 50,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(15.0),
              child: Column(
                children: [
                  Text(
                    post.namePost,
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.all(
                  20,
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
                child: Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Container(
                              width: 250.0,
                              child: Text(
                                post.street,
                                style: TextStyle(
                                  fontSize: 18,
                                ),
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                              ),
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
                      ],
                    ),
                    SizedBox(height: 30),
                    Column(
                      children: <Widget>[
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                              width: 1,
                              color: Color(0xFF273147),
                            ),
                          ),
                          width: 500,
                          height: 50,
                          child: FlatButton(
                              onPressed: () {},
                              child: Text(
                                'Traçar rota',
                              )),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: <Widget>[
                            Container(
                              decoration: BoxDecoration(
                                border: Border.all(
                                  width: 1,
                                  color: Color(0xFF273147),
                                ),
                              ),
                              width: 180,
                              height: 50,
                              child: FlatButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) {
                                      return UpdatePrice();
                                    }),
                                  );
                                },
                                child: Text(
                                  'Atualizar preço',
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Container(
                              decoration: BoxDecoration(
                                border: Border.all(
                                  width: 1,
                                  color: Color(0xFF273147),
                                ),
                              ),
                              width: 180,
                              height: 50,
                              child: FlatButton(
                                onPressed: () {},
                                child: Text(
                                  'Favoritos',
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    Container(
                      child: SmoothStarRating(
                        color: Color(0xFF273147),
                        rating: 3,
                        size: 50.0,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Container buildPrice(BuildContext context, double defaultSize,
      {String price}) {
    return Container(
      child: Text(
        price,
        style: TextStyle(
          fontSize: 30.0,
          fontWeight: FontWeight.w600,
        ),
        overflow: TextOverflow.ellipsis,
        maxLines: 2,
      ),
    );
  }
}
