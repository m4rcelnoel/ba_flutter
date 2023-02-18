import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ba_flutter/pages/drinks_page.dart';

void main() => runApp(const ContactPage());

class ContactPage extends StatelessWidget {
  const ContactPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      child: Column(
        children: [
          Container(
              child: Stack(
            children: [
              Positioned(
                child: Container(
                  width: double.infinity,
                  height: 175,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                    image: AssetImage('assets/image/cafe-bar.jpg'),
                    fit: BoxFit.cover,
                  )),
                ),
              ),
              Positioned(
                child: Opacity(
                  opacity: 0.7,
                  child: Container(
                    height: 40,
                    width: double.maxFinite,
                    color: Colors.black,
                  ),
                ),
              ),
            ],
          )),
          Flexible(
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: <Widget>[
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      child: Text(
                        "Öffnungszeiten:",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      margin: EdgeInsets.only(top:10),
                      child: Text(
                        "Mo - Fr.: 15:00 - 22:00 Uhr",
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      child: Text(
                        "Sa: 15:00 - 02:00 Uhr",
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      child: Text(
                        "So: 15:00 - 22:00 Uhr",
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      margin: EdgeInsets.only(top: 50),
                      child: Text(
                        "Kontakt:",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      margin: EdgeInsets.only(top:10),
                      child: Text(
                        "Tel.: 07121 / 50012",
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      child: Text(
                        "E-Mail: kontakt@bar.de",
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      margin: EdgeInsets.only(top: 50),
                      child: Text(
                        "Adresse:",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      margin: EdgeInsets.only(top:10),
                      child: Text(
                        "Bar",
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      child: Text(
                        "Straße 123",
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      child: Text(
                        "72770 Reutlingen",
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    ));
  }
}