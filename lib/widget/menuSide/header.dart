import 'package:flutter/material.dart';

DrawerHeader buildHeader() {
  return DrawerHeader(
    decoration: BoxDecoration(
      color: Color(0xFF273147),
    ),
    child: Padding(
      padding: EdgeInsets.all(6),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Center(
            child: Image(
              height: 50,
              image: AssetImage(
                'assets/images/logo.png',
              ),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Center(
            child: Text(
              'Preço dos Combustíveis',
              style: TextStyle(
                fontSize: 14,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    ),
  );
}
