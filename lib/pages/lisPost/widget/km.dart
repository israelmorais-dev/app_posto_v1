import 'package:flutter/material.dart';

Row buildKm(BuildContext context, double defaultSize, {String km}) {
  return Row(
    children: <Widget>[
      Container(
        width: 50.0,
        decoration: BoxDecoration(
          color: Theme.of(context).accentColor,
          borderRadius: BorderRadius.circular(5.0),
        ),
        alignment: Alignment.center,
        child: Text(
          km,
          style: TextStyle(fontSize: 12.0, color: Colors.white),
          overflow: TextOverflow.ellipsis,
          maxLines: 2,
        ),
      ),
    ],
  );
}
