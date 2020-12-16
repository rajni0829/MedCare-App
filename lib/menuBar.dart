import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'signin_page.dart';


class sideBar extends StatelessWidget {

  final FirebaseAuth _auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    return Drawer(

      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(20.0),
              color: Colors.black,
              child: Column(
                children: [Container(
                  height: 80,
                  width: 80,
                  margin: EdgeInsets.only(top: 30.0),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        image: NetworkImage("https://upload.wikimedia.org/wikipedia/commons/thumb/7/7e/Circle-icons-profile.svg/1024px-Circle-icons-profile.svg.png"),
                        fit: BoxFit.fill
                    ),
                  ),
                ),

                  Padding(
                    padding: const EdgeInsets.fromLTRB(10.0, 20.0, 10.0, 10.0),
                    child: Text(
                      "Saksham Agarwal",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 25.0,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 10.0, left: 10.0),
                    child: Text(
                      "skshamagarwal@gmail.com",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15.0,
                      ),),
                  ),
                ]
              ),
            ),

            SizedBox(height: 10.0,),
            ListTile(
              leading: Icon(Icons.person, color: Colors.black,),
              title: Text(
                  "Profile",
                style: TextStyle(
                  color: Colors.black,
                  fontFamily: "Montserrat",
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0,
                ),
              ),
            ),

            ListTile(
              leading: Icon(Icons.contact_support, color: Colors.black,),
              title: Text(
                "Reach Us",
                style: TextStyle(
                  color: Colors.black,
                  fontFamily: "Montserrat",
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0,
                ),
              ),
            ),

            ListTile(
              leading: Icon(Icons.add_link, color: Colors.black,),
              title: Text(
                "Terms and Conditions",
                style: TextStyle(
                  color: Colors.black,
                  fontFamily: "Montserrat",
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0,
                ),
              ),
            ),

            ListTile(
              leading: Icon(Icons.assignment, color: Colors.black,),
              title: Text(
                "Privacy Policy",
                style: TextStyle(
                  color: Colors.black,
                  fontFamily: "Montserrat",
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0,
                ),
              ),
            ),

            ListTile(
              leading: Icon(Icons.feedback, color: Colors.black,),
              title: Text(
                "Feedback",
                style: TextStyle(
                  color: Colors.black,
                  fontFamily: "Montserrat",
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0,
                ),
              ),
            ),

            ListTile(
              leading: Icon(Icons.share_rounded, color: Colors.black,),
              title: Text(
                "Share App",
                style: TextStyle(
                  color: Colors.black,
                  fontFamily: "Montserrat",
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0,
                ),
              ),
            ),

            ListTile(
              onTap: () async{
                await signOut().then((result) {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => LoginScreen(),));
                });
              },
              leading: Icon(Icons.exit_to_app, color: Colors.black,),
              title: Text(
                "Sign Out",
                style: TextStyle(
                  color: Colors.black,
                  fontFamily: "Montserrat",
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0,
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }

  Future signOut() async {
    try{
      return _auth.signOut();
    }
    catch (error){
      print(error.toString());
      return null;
    }
  }
}
