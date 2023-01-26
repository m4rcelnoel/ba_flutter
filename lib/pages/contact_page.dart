import 'package:flutter/cupertino.dart';

void main() => runApp(const ContactPage());

class ContactPage extends StatelessWidget {
  const ContactPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const CupertinoApp(
      theme: CupertinoThemeData(brightness: Brightness.light),
      home: Text("data"),
    );
  }
}