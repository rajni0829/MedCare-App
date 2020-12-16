import 'dart:async';
import 'package:firebase_core/firebase_core.dart';
import 'home_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Firebase.initializeApp();
  runApp(Medcare());
}

class Medcare extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(
        Duration(seconds: 3),
        () => Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => HomePage(),
            )));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 140,
            ),
            Center(
                child: Image.asset('assets/LOGO.jpg',
                    height: MediaQuery.of(context).size.width * .7)),
            SizedBox(
              height: 90,
            ),
            Container(
              width: 40.0,
              alignment: Alignment.bottomCenter,
              child: Image.asset('assets/loadgif.gif'),
            ),
          ],
        ),
      ),
    );
  }
}

// decoration: BoxDecoration(
//   image: DecorationImage(
//     image: AssetImage('assets/.jpg'),
//       fit: BoxFit.cover,
//   )
// ),

// ch
// Image.asset('assets/LOGO.jpg', width: MediaQuery.of(context).size.width*.5),

// )Text("MEDCARE",
//   style: TextStyle(
//     color: Colors.grey[400],
//     fontFamily: 'Montserrat',
//     fontSize: 20.0,
//     letterSpacing: 20.0
//   ),
// ),

// LOGO
// Image.asset('assets/bg_asset3.jpeg', height: MediaQuery.of(context).size.width*.5),
