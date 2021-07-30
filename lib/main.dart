import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
     SystemChrome.setPreferredOrientations([
        DeviceOrientation.portraitUp,
        DeviceOrientation.portraitDown,
      ]);
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckModeBanner : false,     
      theme: ThemeData(
       hintColor: Color(0xFFC0F0E8),
          primaryColor: Color(0xFF80E1D1),
          canvasColor: Colors.transparent),
          fontFamily: "Montserrat",
      home: Home(),
    );
  }
}
class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);


  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}
