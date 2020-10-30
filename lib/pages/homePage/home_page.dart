import 'package:flutter/material.dart';
import '../../widget/app_bar.dart';
import '../../widget/menuSide/menu_side.dart';
import '../../widget/my_bottom_navigation.dart';
import '../calculator/calculator.dart';
import 'card_home.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFf0f0f0),
      appBar: buildAppBar(context),
      drawer: MenuSide(),
      bottomNavigationBar: MyBottomNavigation(),
      body: Padding(
        padding: EdgeInsets.symmetric(
          vertical: 30,
          horizontal: 5,
        ),
        child: GridView.count(
          crossAxisCount: 2,
          children: <Widget>[
            CardHome(
              img: 'assets/icons/posto-de-gasolina.svg',
              text: 'Adicionar Posto',
              press: () {},
            ),
            CardHome(
              img: 'assets/icons/diagrama.svg',
              text: 'Comparar Preço',
              press: () {},
            ),
            CardHome(
              img: 'assets/icons/calculadora.svg',
              text: 'Calculadora Flex',
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) {
                    return Calculator();
                  }),
                );
              },
            ),
            CardHome(
              img: 'assets/icons/comprovante.svg',
              text: 'Copuns',
              press: () {},
            ),
          ],
        ),
      ),
    );
  }
}
