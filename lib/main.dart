import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My First App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: JanasKleineSeite(),
    );
  }
}

class JanasKleineSeite extends StatefulWidget {
  @override
  _JanasKleineSeiteState createState() => _JanasKleineSeiteState();
}

class _JanasKleineSeiteState extends State<JanasKleineSeite> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Meine supadupa-Seite"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Image.network("https://vignette.wikia.nocookie.net/harry-potter-lexikon/images/d/d0/Hermine_Granger.jpg/revision/latest?cb=20181108160753&path-prefix=de"),
              machNeReihe("Lieblingstier", "Hund"),
              machNeReihe("Lieblingsfarbe", "gruen"),
              machNeReihe("Lieblingsmusik", "alles"),
            ],
          ),
        ),
      ),
    );
  }

  Widget machNeReihe(attribut, wert) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Text(attribut,
              style: TextStyle(
                fontSize: 30,
              )),
          Text(wert,
              style: TextStyle(
                fontSize: 30,
              )),
        ],
      ),
    );
  }
}
