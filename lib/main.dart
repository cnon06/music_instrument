import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:  MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  void playSound(int number)
  {
    final player = AudioCache();
    player.play(("note$number.wav"));
  }


  Expanded pianoKeys({required Color color, required int noteNumber})
  {
   return Expanded(
      child: Padding(
        padding: EdgeInsets.all(4),
        child: GestureDetector(
          onTap: ()
          {
            playSound(noteNumber);
          },
          child: Container(
              width: 100,
              height: 35,
              color: color,//Colors.lime,

              child: Text("")),
        ),
      ),
    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Main Page"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children:  <Widget>[

            pianoKeys(color: Colors.teal, noteNumber: 1),
            pianoKeys(color: Colors.amberAccent, noteNumber: 2),
            pianoKeys(color: Colors.redAccent, noteNumber: 3),
            pianoKeys(color: Colors.blue, noteNumber: 4),
            pianoKeys(color: Colors.purple, noteNumber: 5),
            pianoKeys(color: Colors.green, noteNumber: 6),
            pianoKeys(color: Colors.yellow, noteNumber: 7),

          ],
        ),
      ),

    );
  }
}
