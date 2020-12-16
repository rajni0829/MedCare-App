import 'package:firebase_auth/firebase_auth.dart';
import 'Dashboard_page.dart';
import 'signup_page.dart';
import 'package:flutter/material.dart';
// import 'package:flutter/cupertino.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _key = GlobalKey<FormState>();

  final FirebaseAuth _auth = FirebaseAuth.instance;

  TextEditingController _emailContoller = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: SingleChildScrollView(
        child: Form(
            key: _key,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
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
                  child: TextFormField(
                    controller: _emailContoller,
                    validator: (value) {
                      if (value.isEmpty) {
                        return 'Email cannot be empty';
                      }
                      else
                        return null;
                    },
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black,)
                      ),
                      labelText: 'User ID',
                      prefixIcon: Icon(Icons.person, color: Colors.black,size: 20.0,),
                      labelStyle: TextStyle(
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.bold,
                        color: Colors.grey,
                      ),

                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(left: 20.0, top: 20.0, right: 20.0, bottom: 40.0),
                  child: TextFormField(
                    controller: _passwordController,
                    validator: (value) {
                      if (value.isEmpty) {
                        return 'Password cannot be empty';
                      } else
                        return null;
                    },

                    obscureText: true,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black,)
                      ),
                      labelText: 'Password',
                      prefixIcon: Icon(Icons.security, color: Colors.black,size: 20.0,),
                      labelStyle: TextStyle(
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.bold,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ),


                Center(

                  child: RaisedButton(
                    padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                    onPressed: () {
                      if (_key.currentState.validate()) {
                        signInUser();
                      }
                    },

                    color: Colors.black,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        side: BorderSide(color: Colors.black)),
                    child: Text('Sign In',
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.bold)
                    ),
                  ),
                ),

                SizedBox(height: 60.0,),

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
                          Navigator.of(context)
                              .pushReplacement(
                              MaterialPageRoute(builder: (context) => SignUpPage(),)
                          );
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

                SizedBox(height: 20.0,)
              ],
            )
        ),
      ),
    );
  }

  void signInUser() async {
    dynamic authResult =
    await loginUser(_emailContoller.text, _passwordController.text);
    if (authResult == null) {
      Alert(context);
    } else {
      _emailContoller.clear();
      _passwordController.clear();
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => DashboardPage(),));
    }
  }

  Future loginUser(String email, String password) async {
    try {
      UserCredential result = await _auth.signInWithEmailAndPassword(
          email: email, password: password);
      return result.user;
    } catch (e) {
      print(e.toString());
    }
  }

  void Alert(BuildContext context) {

    var alertDialog = AlertDialog(
      title: Text("Invalid Credentials"),
      content: Text("Incorrect email or password. Try again or Sign Up."),
    );

    showDialog(
      context: context,
      builder: (BuildContext context){
        return alertDialog;
      },
    );
  }

}
