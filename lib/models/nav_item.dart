import 'package:flutter/material.dart';

import '../pages/favorite/favorite.dart';
import '../pages/homePage/home_page.dart';
import '../pages/lisPost/list_home.dart';

class NavItem {
  final int id;
  final String icon;
  final Widget destination;

  NavItem({this.id, this.icon, this.destination});
  bool destinationChecker() {
    if (destination != null) {
      return true;
    }
    return false;
  }
}

class NavItems extends ChangeNotifier {
  int selectedIndex = 1;
  void chnageNavIndex({int index}) {
    selectedIndex = index;
    notifyListeners();
  }

  List<NavItem> items = [
    NavItem(
      id: 1,
      icon: "assets/icons/home.svg",
      destination: HomePage(),
    ),
    NavItem(
      id: 2,
      icon: "assets/icons/list.svg",
      destination: ListHome(),
    ),
    NavItem(
      id: 3,
      icon: "assets/icons/favorites.svg",
      destination: Favorite(),
    ),
  ];
}
