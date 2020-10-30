import 'package:flutter/material.dart';

import '../../widget/my_bottom_navigation.dart';
import 'widget/logo.dart';

class Calculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: MyBottomNavigation(),
      backgroundColor: Color(0xFF273147),
      body: ListView(
        children: <Widget>[
          Logo(),
        ],
      ),
    );
  }
}
