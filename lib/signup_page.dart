import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_medcare/signin_page.dart';
import 'Dashboard_page.dart';

class SignUpPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        home: Signup()
    );
  }
}

class Signup extends StatelessWidget {

  // Accessing value by _nameController.text
  TextEditingController _nameController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _phoneController = TextEditingController();
  
  String _nameError;
  String _phoneError;
  String _emailError;

  final _formKey =GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      // backgroundColor: Color(0xFFCADCED),
      body: SingleChildScrollView(
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 100.0, left: 20.0),
                child: Row(
                  children: [
                    Text(
                      'Get on ',
                      style: TextStyle(
                        fontSize: 30.0,
                        fontFamily: 'Montserrat',
                      ),
                    ),

                    Text(
                      'Board',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30.0,
                        color: Colors.blue,
                        fontFamily: 'Montserrat',
                      ),
                    ),]
                ),
              ),

              Form(
                child: Column(
                  children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0, top: 40.0, right: 20.0),
                    child: TextFormField(
                      
                      controller: _nameController,
                      keyboardType: TextInputType.name,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black,)
                        ),
                        labelText: 'Full Name',
                        prefixIcon: Icon(Icons.person, color: Colors.black, size: 20.0,),
                        labelStyle: TextStyle(
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.bold,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(left: 20.0, top: 20.0, right: 20.0),
                    child: TextFormField(
                      
                      controller: _emailController,
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black,)
                        ),
                        labelText: 'Email Id',
                        prefixIcon: Icon(Icons.email, color: Colors.black,size: 20.0,),
                        labelStyle: TextStyle(
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.bold,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(left: 20.0, top: 20.0, right: 20.0),
                    child: TextFormField(
                      
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
                ]),
              ),


              SizedBox(height: 40,),

              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "By signing up, you agree to our ",
                      style: TextStyle(
                          fontFamily: 'Montserrat',
                          color: Colors.grey,
                          fontSize: 12.0
                      ),
                    ),

                    InkWell(
                      onTap: () {
                        // Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => TermsPage(),));
                      },
                      child: Text(
                        "Terms",
                        style: TextStyle(
                          fontFamily: 'Montserrat',
                          color: Colors.grey,
                          fontSize: 12.0,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ),

                    Text(
                      " & ",
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                        color: Colors.grey,
                        fontSize: 12.0,
                      ),
                    ),

                    InkWell(
                      onTap: () {
                        // Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => TermsPage(),));
                      },
                      child: Text(
                        "Privacy Policy",
                        style: TextStyle(
                            fontFamily: 'Montserrat',
                            color: Colors.grey,
                            fontSize: 12.0,
                            decoration: TextDecoration.underline
                        ),
                      ),
                    ),
                  ]),

              Padding(
                padding: const EdgeInsets.fromLTRB(40.0, 10.0, 40.0, 40.0),

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
                        'Submit  &  Send OTP',
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
                  Text('Already have an Account? ',
                  style: TextStyle(
                    fontFamily: 'Montserrat',
                    color: Colors.black,
                  ),),

                  InkWell(
                    onTap: () {
                      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => SignInPage(),));
                    },
                    child: Text('Sign In',
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                        color: Colors.black,
                        decoration: TextDecoration.underline
                      ),),
                  ),
                ]
              )
            ],
        ),
      ),
    );
  }
}
