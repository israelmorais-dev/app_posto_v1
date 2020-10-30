import 'package:flutter/material.dart';
import '../../widget/app_bar.dart';
import '../../widget/menuSide/menu_side.dart';
import '../../widget/my_bottom_navigation.dart';

class Favorite extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFf0f0f0),
      drawer: MenuSide(),
      appBar: buildAppBar(context),
      bottomNavigationBar: MyBottomNavigation(),
    );
  }
}
