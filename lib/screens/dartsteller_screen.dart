import 'package:flutter/material.dart';

class DarstellerlisteScreen extends StatefulWidget {
  @override
  _DarstellerlisteScreenState createState() => _DarstellerlisteScreenState();
}

class _DarstellerlisteScreenState extends State<DarstellerlisteScreen> {
  List<String> haupt = [
    "Major",
    "Minor",
    "Augmented",
    "Diminished"
  ].toList();

  List<String> sub = [
    "(1)Root                      C\n(3)Major Third          E\n(5)Perfect Fifth        G",
    "(1)Root                      C\n(b3)Minor Third        E\n(5)Perfect Fifth        G",
    "(1)Root\n(3)Major Third\n(#5)Augmented Fifth",
    "(1)Root\n(b3)Minor Third\n(b5)Diminished Fifth"
  ].toList();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Chords"),
        leading: Icon(Icons.menu),
        backgroundColor: Colors.red,
      ),
      body:Container(
        child: ListView.builder(
          itemCount: 4,
          itemBuilder: (context, index)  {
            return ListTile(
                leading: Icon(Icons.home),
                title: Padding(
                  padding: const EdgeInsets.only(top: 5.0, bottom: 5.0),
                  child: Text(haupt[index]),
                ),
                subtitle: Padding(
                  padding: const EdgeInsets.only(top: 2.0, bottom: 2.0),
                  child: Text(sub[index]),
                ),
                trailing: Icon(Icons.play_circle_outline),
            );
          }
          ,)
      )
    );
  }
}
