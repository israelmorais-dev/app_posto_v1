import 'package:flutter/material.dart';

class About extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF273147),
        title: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 50),
          child: Image.asset(
            'assets/images/logo.png',
            height: 35,
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 30,
          vertical: 30,
        ),
        child: Column(
          children: <Widget>[
            Text(
              "Sobre",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
            ),
            SizedBox(
              height: 20,
            ),
            Column(
              children: <Widget>[
                Row(
                  children: [
                    Text("Versão: "),
                    Text(" v1.0.1"),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Mussum Ipsum, cacilds vidis litro abertis. Paisis, filhis, espiritis santis. Atirei o pau no gatis, per gatis num morreus. Quem num gosta di mé, boa gentis num é. Mauris nec dolor in eros commodo tempor. Aenean aliquam molestie leo, vitae iaculis nisl.",
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
