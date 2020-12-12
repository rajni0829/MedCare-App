import 'package:flutter/material.dart';

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
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(20.0, 40.0, 20.0, 20.0),
              child: Stack(
                children: [
                  Center(
                    child: Container(
                      child: Stack(
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(150.0, 10.0, 10.0, 10.0),
                            child: Text(
                              'HEALTH CARD',
                              style: TextStyle(
                                  fontFamily: "Montserrat",
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20
                              ),
                            ),
                          ),

                          Padding(
                            padding: const EdgeInsets.fromLTRB(30.0, 50.0, 10.0, 10.0),
                            child: Image(
                              image: AssetImage('assets/sc6.png'),
                              height: 80.0,
                            )
                          ),

                          Padding(
                              padding: const EdgeInsets.fromLTRB(10.0, 140.0, 10.0, 10.0),
                              child: Image(
                                image: AssetImage('assets/barcode.png'),
                                height: 30.0,
                              )
                          ),

                          Padding(
                            padding: const EdgeInsets.fromLTRB(140.0, 60.0, 10.0, 10.0),
                            child: Text(
                              'Name',
                              style: TextStyle(
                                fontFamily: "Montserrat",
                                fontWeight: FontWeight.bold,
                                fontSize: 12,
                                color: Colors.grey[600],
                              ),
                            ),
                          ),

                        ]
                      ),

                      height: 200.0,
                      width: 320.0,
                      decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: Colors.amber,
                      boxShadow: [BoxShadow(
                        color: Colors.black26,
                        blurRadius: 20.0,
                        spreadRadius: 5.0,
                        )]
                      ),
                    ),
                  ),
                ]
              )
          ),
        ]
      )
    );
  }
}
