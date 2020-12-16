import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'signin_page.dart';
import 'signup_page.dart';

class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF4be8ce),
      body: Center(
        
        child: SingleChildScrollView(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Container(
                child: Image.asset(
                  'assets/logom.png',
                  scale: 2.5,
                  
                )

              ),

                SizedBox(
                  height: 80,
                ),

                // Sign up Button

                Text("Make your Med Life Easier",
                  style: TextStyle(
                    color: Color(0xFF242d68),
                  fontSize: 20.0,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.bold,
                ),),

                Padding(
                  padding: const EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 40.0),
                  child: Text(
                    "We will help you to maintain your records and consult doctor in a simpler way.",

                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: 'Montserrat',
                      color: Colors.black,

                    ), ),
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                  children: [
                    Container(
                      height: 40.0,
                      width: 100.0,
                      decoration: BoxDecoration(
                          color: Color(0xFF242d68),
                          borderRadius: BorderRadius.circular(10.0),
                          boxShadow: [BoxShadow(
                            color: Colors.black26.withOpacity(0.3),
                            blurRadius: 7,
                            spreadRadius: 2,
                            offset: Offset(4, 4),

                          )]
                      ),
                      child: InkWell(
                        onTap: () {
                          Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => SignUpPage(),));
                        },
                        child: Center(
                          child: Text(
                            "Sign Up",
                            style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: 15,
                              color: Colors.white,
                              fontWeight: FontWeight.bold
                            ),
                          ),
                        ),
                      ),
                    ),

                    Container(
                      height: 40.0,
                      width: 100.0,
                      decoration: BoxDecoration(
                          color: Color(0xFF242d68),
                          borderRadius: BorderRadius.circular(10.0),
                          boxShadow: [BoxShadow(
                            color: Colors.black26.withOpacity(0.3),
                            blurRadius: 7,
                            spreadRadius: 2,
                            offset: Offset(4, 4),

                          )]
                      ),
                      child: InkWell(
                        onTap: () {
                          Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => LoginScreen(),));
                        },
                        child: Center(
                          child: Text(
                            "Log in",
                            style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: 15,
                              color: Colors.white,
                              fontWeight: FontWeight.bold
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                )

              ]
          ),
        ),
      ),
    );
  }
}
