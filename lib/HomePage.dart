import 'package:flutter/material.dart';
import 'AudioConstructor.dart';
import 'package:audioplayers/audio_cache.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  AssetImage logo = AssetImage("images/logo.png");
  AudioCache audioCache = AudioCache();
  List<AudioConstructor> list = [
    AudioConstructor("one.wav", Colors.pink, "One"),
    AudioConstructor("two.wav", Colors.purple, "Two"),
    AudioConstructor("three.wav", Colors.green, "Three"),
    AudioConstructor("four.wav", Colors.orange, "Four"),
    AudioConstructor("five.wav", Colors.brown, "Five"),
    AudioConstructor("six.wav", Colors.blue, "Six"),
    AudioConstructor("seven.wav", Colors.deepOrange, "Seven"),
    AudioConstructor("eight.wav", Colors.indigo, "Eight"),
    AudioConstructor("nine.wav", Colors.teal, "Nine"),
    AudioConstructor("ten.wav", Colors.lightGreen, "Ten"),
  ];

  playNumber(String num) {
    audioCache.play(num);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Spanish Numbers Audio'),
      ),
      body: Container(
        child: Center(
          child: Column(
            children: <Widget>[
              Image(image: logo),
              Expanded(
                child: GridView.builder(
                  padding: EdgeInsets.all(10.0),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 1,
                    crossAxisSpacing: 10.0,
                    childAspectRatio: 3.0,
                    mainAxisSpacing: 10.0,
                  ),
                  itemCount: list.length,
                  itemBuilder: (context, i) => SizedBox(
                    width: 25.0,
                    height: 25.0,
                    child: RaisedButton(
                      // padding: EdgeInsets.all(10.0),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: Text(
                        list[i].btnText,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0,
                          color: Colors.white,
                        ),
                      ),
                      color: list[i].materialColor,
                      onPressed: () {
                        playNumber(list[i].audio);
                      },
                    ),
                  ),
                ),
              ),
              Container(
                //padding: EdgeInsets.all(20.0),
                padding: EdgeInsets.fromLTRB(118.0, 7.0, 118.0, 7.0),
                color: Colors.black,
                child: Text(
                  "Hitesh Sir is the best !!!",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 15.0,
                      fontWeight: FontWeight.bold),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
