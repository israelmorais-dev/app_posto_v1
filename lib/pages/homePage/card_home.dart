import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CardHome extends StatelessWidget {
  final Function press;
  final String img;
  final String text;

  const CardHome({
    Key key,
    this.press,
    this.img,
    this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Card(
        color: Color(0xFF273147),
        child: Stack(
          children: <Widget>[
            Center(
              // ignore: missing_required_param
              child: IconButton(
                icon: SvgPicture.asset(
                  img,
                  color: Color(0xFFd1d4d4),
                  height: 150,
                ),
              ),
            ),
            Center(
              child: Container(
                margin: EdgeInsets.only(
                  top: 100,
                ),
                child: Text(
                  text,
                  style: TextStyle(
                    color: Color(0xFFd1d4d4),
                    fontSize: 14,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
