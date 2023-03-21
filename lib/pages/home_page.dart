import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ba_flutter/pages/drinks_page.dart';

//Definieren der Liste für das Menü
List menus = [
  {"title": "Kaffee", "imageName": "coffee.png", "name": "hotdrinks"},
  {"title": "Heiße Schoko", "imageName": "hotchoco.png", "name": "hotchocolate"},
  {"title": "Eiskaltes", "imageName": "colddrinks.png", "name": "icecold"},
  {"title": "Softdrinks", "imageName": "softdrinks.png", "name": "softdrinks"},
  {"title": "Säfte", "imageName": "juice.png", "name": "juice"},
  {"title": "Snacks", "imageName": "snacks.png", "name": "snacks"},
];

void main() => runApp(const HomePage());

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      child: Column(
        children: [
          Container( //Container für das Banner Bild
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
          Flexible( //Flexibler Container für das Raster Menü
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: GridView(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, //Anzahl Elemente pro Zeile und Spalte
                  crossAxisSpacing: 10, //Abstand zwischen den Elementen horizontal
                  mainAxisSpacing: 10, //Abstand zwischen den Elementen vertikal
                ),
                children: <Widget>[
                  for ( var i in menus ) InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(builder: (context) => DrinksPage(i["name"])));
                    },
                    child: Stack(
                    children: [ //Container für das Bild der Menüs
                      Positioned(
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            image: DecorationImage(image: AssetImage('assets/image/${i["imageName"]}'),
                            fit: BoxFit.cover)
                          ),
                        )),
                        Positioned( //Container für den Titel des Menüs
                        bottom: 0,
                        left: 0,
                        right: 0,
                        child: Opacity(
                          opacity: 0.7,
                          child: Container(
                            height: 30,
                            width: double.maxFinite,
                            decoration: const BoxDecoration(
                                borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(20),
                                    bottomRight: Radius.circular(20)),
                                color: Colors.black),
                            child: Center(
                              child: Text('${i["title"]}',
                                textAlign: TextAlign.center,
                                style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ),
                        ),
                    ],
                  ),
                ),
                ]
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
