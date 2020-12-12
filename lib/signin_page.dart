import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_medcare/signup_page.dart';
import 'Dashboard_page.dart';

class SignInPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SignIn(),
    );
  }
}

class SignIn extends StatelessWidget {
  TextEditingController _phoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            Padding(
              padding: const EdgeInsets.only(top: 100, left: 20.0),
              child: Text(
                'Hello there,',
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 40.0,
                  // fontWeight: FontWeight.bold,
                  fontFamily: 'Montserrat',

                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Text(
                'Welcome back',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30.0,
                  fontFamily: 'Montserrat',

                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(left: 20.0, top: 60.0, right: 20.0),
              child: TextField(
                controller: _phoneController,
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black,)
                  ),
                  labelText: 'Phone No.',
                  prefixText: '+91 ',
                  prefixIcon: Icon(Icons.phone, color: Colors.black,size: 20.0,),
                  labelStyle: TextStyle(
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.bold,
                    color: Colors.grey,
                  ),
                ),
              ),
            ),

            SizedBox(height: 10.0,),
            Center(
              child: Text(
                "You will recieve an OTP on the given number.",
                style: TextStyle(
                  fontFamily: 'Montserrat',
                  color: Colors.grey,
                  fontSize: 12.0,
                ),
              ),
            ),
            
            Padding(
              padding: const EdgeInsets.fromLTRB(40.0, 40.0, 40.0, 60.0),

              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: Colors.black
                ),
                alignment: Alignment.center,
                child: InkWell(
                  onTap: () {
                    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => DashboardPage(),));
                    },
                  child: Padding(
                    padding: const EdgeInsets.only(top: 15.0, bottom: 15.0),

                    child: Text(
                      'Send OTP  &  Login',
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.bold
                      ),

                    ),
                  ),
                ),
              ),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Dont have an Account?  ",
                    style: TextStyle(
                      color: Colors.grey,
                      fontFamily: 'Montserrat',
                    ),
                  ),

                  InkWell(
                    onTap: () {
                      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => SignUpPage(),));
                    },

                    child: Text(
                      "Sign Up",
                      style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'Montserrat',
                        decoration: TextDecoration.underline

                      ),
                    ),
                  ),
                ]),
          ],
        ),
      ),
    );
  }
}
