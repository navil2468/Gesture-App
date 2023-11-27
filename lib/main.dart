import 'package:flutter/material.dart';

void main() {
  runApp(GestureApp());
}

class GestureApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
  return MaterialApp(
    home: GestureAppWidget(),
  );
  }
}
class GestureAppWidget extends StatefulWidget{
  @override
  _GestureAppWidgetState createState() => _GestureAppWidgetState();
}

class _GestureAppWidgetState extends State<GestureAppWidget>{
  int gestureNum = 0;
  List<String> gestures = ['images/Hand high five.png', 'images/Hand Fist Bump.png', 'images/Hand down low.png','images/Hand shake.png'];
  void highFive(){
    setState((){
      gestureNum = 0;
    }
    );
  }

  void fistBump(){
    setState((){
      gestureNum = 1;
    }
    );
  }

  void downLow(){
    setState((){
      gestureNum = 2;
    }
    );
  }

  void shakeHand(){
    setState((){
      gestureNum = 3;
    }
    );
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('Hand Gestures'),
        backgroundColor: Color.fromARGB(255, 251, 162, 38)
      ),
      body: GestureDetector(
        onTap: highFive,
        onLongPress: fistBump,
        onDoubleTap: shakeHand,
        onVerticalDragEnd: (details) => downLow(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              gestures[gestureNum],
              height: 300,
              width: 300
          ),
          SizedBox(height:25),
          Text(textAlign: TextAlign.center,'Interact with the hand. Tap to high five. Long Press to Fist Bump. Double tap to shake hands. Swipe down for a down low.', selectionColor: const Color.fromARGB(255, 0, 0, 0)),
          ]
          )
      )
    );
  }
}