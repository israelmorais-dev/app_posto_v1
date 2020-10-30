import 'package:flutter/material.dart';

Text buildPrice(BuildContext context, double defaultSize, {String price}) {
  return Text(
    price,
    style: TextStyle(
      fontSize: 20.0,
      fontWeight: FontWeight.w600,
    ),
    overflow: TextOverflow.ellipsis,
    maxLines: 2,
  );
}
