import 'package:flutter/material.dart';

import '../constants/size_config.dart';

AppBar buildAppBar(BuildContext context) {
  return AppBar(
    backgroundColor: Color(0xFF273147),
    centerTitle: true,
    title: Image.asset(
      "assets/images/logo.png",
      height: 35,
    ),
    actions: <Widget>[
      IconButton(
        icon: Icon(
          Icons.search,
          color: Colors.white,
        ),
        onPressed: () {},
      ),
      SizedBox(
        width: SizeConfig.defaultSize * 0.5,
      ),
    ],
  );
}
