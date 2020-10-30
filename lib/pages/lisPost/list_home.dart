import 'package:app_posto_v1/pages/lisPost/body.dart';
import 'package:flutter/material.dart';
import '../../constants/size_config.dart';
import '../../widget/app_bar.dart';
import '../../widget/menuSide/menu_side.dart';
import '../../widget/my_bottom_navigation.dart';

class ListHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: Color(0xFFf0f0f0),
      appBar: buildAppBar(context),
      drawer: MenuSide(),
      body: Body(),
      bottomNavigationBar: MyBottomNavigation(),
    );
  }
}
