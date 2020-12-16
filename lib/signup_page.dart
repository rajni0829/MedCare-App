import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_medcare/Dashboard_page.dart';
// import 'package:flutter_medcare/AuthenticationServices/A.dart';
import 'signin_page.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  String _email, _password, _phone, _name;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(

      body: SingleChildScrollView(

        child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,

              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 60.0, left: 20.0),
                  child: Row(
                      children: [
                        Text(
                          'Get on ',
                          style: TextStyle(
                            fontSize: 35.0,
                            fontFamily: 'Montserrat',
                          ),
                        ),

                        Text(
                          'Board',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 35.0,
                            color: Colors.blue,
                            fontFamily: 'Montserrat',
                          ),
                        ),]
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.fromLTRB(20.0, 40.0, 20.0, 10.0),
                  child: TextFormField(
                    validator: (input) {
                      if(input.isEmpty){
                        return 'Name required';
                      }else{
                        return null;
                      }
                    },
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black,)
                      ),
                      labelText: 'Full Name',
                      prefixIcon: Icon(Icons.person, color: Colors.black,size: 20.0,),
                      labelStyle: TextStyle(
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.bold,
                        color: Colors.grey,
                      ),),
                    onSaved: (input) => _name = input,
                  ),
                ),


                Padding(
                  padding: const EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                  child: TextFormField(
                    validator: (input) {
                      if(input.length != 10){
                        return 'Mobile Number not Valid';
                      }else{
                        return null;
                      }
                    },
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
                      ),),
                    onSaved: (input) => _phone = input,
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                  child: TextFormField(
                    validator: (input) {
                      if(input.length < 6){
                        return 'Email ID field can\'t remain empty';
                      }
                      else{
                        return null;
                      }
                    },
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black,)
                      ),
                      labelText: 'Email ID',
                      prefixIcon: Icon(Icons.email, color: Colors.black,size: 20.0,),
                      labelStyle: TextStyle(
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.bold,
                        color: Colors.grey,
                      ),),
                    onSaved: (input) => _email = input,
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                  child: TextFormField(
                    validator: (input) {
                      if(input.length < 6){
                        return 'Password can\'t remain Empty';
                      }else{
                        return null;
                      }
                    },
                    keyboardType: TextInputType.visiblePassword,
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
                      ),),
                    onSaved: (input) => _password = input,
                    obscureText: true,
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(top: 20.0, bottom: 40.0),
                  child: RaisedButton(
                    padding: EdgeInsets.only(top:15.0, bottom: 15.0, right: 20.0, left: 20.0),

                    onPressed: signUp,
                    color: Colors.black,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        side: BorderSide(color: Colors.black)),
                    child: Text('Sign Up',
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Montserrat',
                        fontWeight: FontWeight.bold)
                    ),
                  ),
                ),

                Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Already have an Account? ',
                        style: TextStyle(
                          fontFamily: 'Montserrat',
                          color: Colors.black,
                        ),),

                      InkWell(
                        onTap: () {
                          Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => LoginScreen(),));
                        },
                        child: Text('Sign In',
                          style: TextStyle(
                              fontFamily: 'Montserrat',
                              color: Colors.black,
                              decoration: TextDecoration.underline
                          ),),
                      ),

                    ]
                ),

                SizedBox(height: 20.0,)

              ],
            )
        ),
      ),
    );
  }
  //
  void signUp() async {
  //   dynamic result = await _auth.CreateNewUser(_email, _password);
    if(_formKey.currentState.validate()){
      _formKey.currentState.save();
      try{
        await FirebaseAuth.instance.createUserWithEmailAndPassword(email: _email, password: _password);
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => LoginScreen()));

      } on FirebaseAuthException catch (e) {
        if (e.code == 'weak-password') {
          print('The password provided is too weak.');
        }
        else if (e.code == 'email-already-in-use') {
          Alert(context);
        }
      }

      catch(e){
        print(e.message);
      }
    }
  }

  void Alert(BuildContext context) {

    var alertDialog = AlertDialog(
      content: Text('Account already exists for the given email. '
          'Try Signing Up using different email or Login to your Account.'),
    );
    
    showDialog(
      context: context,
      builder: (BuildContext context){
        return alertDialog;
      },
    );
  }
}

