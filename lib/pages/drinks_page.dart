import 'package:flutter/material.dart';
import 'package:ba_flutter/api/model.dart'; // Import des Modells
import 'dart:convert';
import 'package:http/http.dart';

class DrinksPage extends StatelessWidget {
  final i; // Definieren der Variable
  DrinksPage(this.i, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      child: Column(children: [
        Container( // Container für das Banner Bild
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
          ),
        ),
        DataWidget(i), // DataWidget für das Anzeigen der Daten
      ]),
    ));
  }
}

// Definieren des DataWidgets
class DataWidget extends StatelessWidget {
  DataWidget(this.i, {super.key});

  final i;

  // Funktion zum Abrufen der Daten von der API
  Future<List<Data>> getData() async {
    print(i);
    Response res = await get(Uri.parse("https://ba.0bdd.de/api/v1/ba/$i"));

    if (res.statusCode == 200) {
      List<dynamic> body = jsonDecode(res.body);

      List<Data> data = body
        .map((dynamic item) => Data.fromJson(item),
        )
        .toList();

        return data;
    }
    else {
      throw "Unable to retrieve data";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: FutureBuilder(
        future: getData(), // Verwenden der getData-Funktion als Future
        builder: (BuildContext context, AsyncSnapshot<List<Data>> snapshot) {
          if (snapshot.hasData) {
            List<Data>? data = snapshot.data;
            return ListView(
              children: data!
                  .map(
                    (Data data) => ListTile(
                      title: Text(data.name, style: TextStyle(color: Colors.white),),
                      subtitle: Text("${data.description}", style: TextStyle(color: Colors.grey),),
                      trailing: Text("${data.price}", style: TextStyle(color: Colors.white),),
                    ),
                  )
                  .toList(),
            );
          } else {
            return Center(child: CircularProgressIndicator()); // Anzeigen eines Ladeindikators, wenn die Daten geladen werden
          }
        },
      ),
    );
  }
}