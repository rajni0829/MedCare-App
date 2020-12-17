import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_medcare/menuBar.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'HealthCard/CardPage.dart';
import 'wallet/walletmain.dart';
import 'con_main.dart';

class DashboardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Dashboard(),
    );
  }
}

class Dashboard extends StatelessWidget {

  final FirebaseAuth _auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),

      backgroundColor: Color(0xFF4be8ce),
      drawer: sideBar(),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [
              Padding(
                padding: EdgeInsets.only(top:10.0, left: 30.0, bottom: 10.0),
                child: Text("Dashboard",
                style: TextStyle(
                  letterSpacing: 2.5,
                  fontWeight: FontWeight.bold,
                  fontSize: 45,
                  color: Colors.white,

                ),),
              ),

              Padding(
                padding: const EdgeInsets.only(left: 30.0),
                child: Text("Medical Maintenance Made Easy",
                  style: TextStyle(
                    letterSpacing: 1.0,
                    fontSize: 17.0,
                    color: Color(0xFF242d68),
                  ),

                ),
              ),

            Container(
              height: MediaQuery.of(context).size.height,
              padding: EdgeInsets.only(top: 40.0),
              margin: EdgeInsets.only(top: 30.0),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(topRight: Radius.circular(30.0) ,topLeft: Radius.circular(30.0)),
                  boxShadow: [BoxShadow(
                    color: Colors.grey,
                    offset: Offset(0.0, 1.0), //(x,y)
                    blurRadius: 6.0,
                  )]
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(builder: (context) => HealthPage(),));
                          },
                          child: Container(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,

                              children: [
                                Image.asset("assets/healthcard.png", scale: 10,),
                                SizedBox(height: 10,),

                                Text("Health Card",
                                  style: TextStyle(
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                            height: 130.0,
                            width: 130.0,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10.0),
                              boxShadow: [BoxShadow(
                                color: Colors.black26.withOpacity(0.2),
                                blurRadius: 7,
                                spreadRadius: 2,
                                offset: Offset(4, 4),
                              )]
                            ),
                          ),
                        ),

                        InkWell(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => Consultancy(),
                            ));
                          },

                          child: Container(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,

                              children: [
                                Image.asset("assets/consultancy.jpg", scale: 12,),
                                SizedBox(height: 10,),

                                Text("Consult Doctor",
                                  style: TextStyle(
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                            height: 130.0,
                            width: 130.0,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10.0),
                                boxShadow: [BoxShadow(
                                  color: Colors.black26.withOpacity(0.2),
                                  blurRadius: 7,
                                  spreadRadius: 2,
                                  offset: Offset(4, 4),
                                )]
                            ),
                          ),
                        ),
                      ]
                  ),

                  SizedBox(
                    height: 30,
                  ),

                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(builder: (context) => MyApp(),));
                          },
                          child: Container(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,

                              children: [
                                Image.asset("assets/wallet.png", scale: 5,),
                                SizedBox(height: 10,),

                                Text("Wallet",
                                  style: TextStyle(
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                            height: 130.0,
                            width: 130.0,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10.0),
                                boxShadow: [BoxShadow(
                                  color: Colors.black26.withOpacity(0.2),
                                  blurRadius: 7,
                                  spreadRadius: 2,
                                  offset: Offset(4, 4),
                                )]
                            ),
                          ),
                        ),

                        InkWell(
                          onTap: () {

                          },

                          child: Container(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,

                              children: [
                                Image.asset("assets/reminder.png", scale: 15,),
                                SizedBox(height: 10,),

                                Text("Reminder",
                                  style: TextStyle(
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                            height: 130.0,
                            width: 130.0,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10.0),
                                boxShadow: [BoxShadow(
                                  color: Colors.black26.withOpacity(0.3),
                                  blurRadius: 7,
                                  spreadRadius: 2,
                                  offset: Offset(4, 4),
                                )]
                            ),
                          ),
                        ),
                      ]
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
