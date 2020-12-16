import 'package:flutter/material.dart';
import 'package:flutter_medcare/Dashboard_page.dart';
import 'menuBar.dart';

class HealthPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      home: new HealthCard(),
    );
  }
}

class HealthCard extends StatefulWidget {
  @override
  _HealthCardState createState() => _HealthCardState();
}

class _HealthCardState extends State<HealthCard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Color(0xFF4be8ce),
        actions: [
          RaisedButton(
            color: Color(0xFF4be8ce),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => DashboardPage()));
            },
            child: Icon(
                Icons.arrow_back_ios,
                color: Colors.white
            ),

          )
        ],
      ),
      drawer: sideBar(),
      backgroundColor: Color(0xFF4be8ce),
    );
  }
}
