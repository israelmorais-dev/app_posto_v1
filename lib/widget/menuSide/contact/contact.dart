import 'package:flutter/material.dart';
import '../../app_bar.dart';
import '../../my_bottom_navigation.dart';
import '../menu_side.dart';

class Contact extends StatefulWidget {
  @override
  _ContactState createState() => _ContactState();
}

class _ContactState extends State<Contact> {
  String _name;
  String _email;
  String _message;
  Function _press;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFf0f0f0),
      appBar: buildAppBar(context),
      bottomNavigationBar: MyBottomNavigation(),
      body: Form(
        child: ListView(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(15.0),
              child: Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "Contato",
                      style: TextStyle(
                        fontSize: 28.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 15),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16.0),
                      child: Column(
                        children: <Widget>[
                          TextField(
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.white,
                              hintText: "Nome",
                              border: InputBorder.none,
                            ),
                          ),
                          SizedBox(height: 8),
                          TextField(
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.white,
                              hintText: "E-mail",
                              border: InputBorder.none,
                            ),
                          ),
                          SizedBox(height: 8),
                          TextField(
                            maxLines: 4,
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.white,
                              hintText: "Mensagem",
                              border: InputBorder.none,
                            ),
                          ),
                          SizedBox(height: 8),
                          MaterialButton(
                            minWidth: double.infinity,
                            color: Color(0xFF273147),
                            onPressed: () {},
                            child: Text(
                              'Enviar',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
