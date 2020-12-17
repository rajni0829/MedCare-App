import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_medcare/menuBarScreens/contact_us.dart';
import 'package:flutter_medcare/menuBarScreens/privacy_policy.dart';
import 'package:flutter_medcare/menuBarScreens/profile.dart';
import 'signin_page.dart';
import 'DatabaseManager/DatabaseManager.dart';


class sideBar extends StatefulWidget {

  @override
  _sideBarState createState() => _sideBarState();
}

class _sideBarState extends State<sideBar> {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  String userID = "";
  List userProfilesList = [];

  @override
  void initState() {
    super.initState();
    fetchUserInfo();
    fetchDatabaseList();
  }

  fetchUserInfo() async {
    User getUser = await FirebaseAuth.instance.currentUser;
    userID = getUser.uid;
  }

  fetchDatabaseList() async {
    dynamic resultant = await DatabaseManager().getUsersList();
    if (resultant == null) {
      print('Unable to retrieve');
    } else {
      setState(() {
        userProfilesList = resultant;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(

      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(20.0),
              color: Color(0xFF4be8ce),
              child: Column(
                children: [Container(
                  height: 80,
                  width: 80,
                  margin: EdgeInsets.only(top: 30.0),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        image: NetworkImage("https://talentedteacherjobs.co.uk/wp-content/uploads/2018/12/Passport-size-Photo.jpg"),
                        fit: BoxFit.fill
                    ),
                  ),
                ),

                  Padding(
                    padding: const EdgeInsets.fromLTRB(10.0, 20.0, 10.0, 10.0),
                    child: Text(
                      "Obulpathi Naidu",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 25.0,
                        shadows: [
                          Shadow(
                            blurRadius: 10.0,
                            color: Colors.black,
                            offset: Offset(0, 1.0),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 10.0, left: 10.0),
                    child: Text(
                      "obulpathi@dypiu.ac.in",
                      style: TextStyle(
                        color: Colors.white,
                        shadows: [
                          Shadow(
                            blurRadius: 10.0,
                            color: Colors.black,
                            offset: Offset(0, 1.0),
                          ),
                        ],
                        fontSize: 15.0,
                      ),),
                  ),
                ]
              ),
            ),

            SizedBox(height: 10.0,),
            InkWell(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => editprofile(),));
              },
              child: ListTile(
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
            ),

            InkWell(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => contactus(),));

              },
              child: ListTile(
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
            ),

            InkWell(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => privacypolicy(),));
              },
              child: ListTile(
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
            ),

            InkWell(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => privacypolicy(),));
              },
              child: ListTile(
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
            ),

            InkWell(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => contactus(),));
              },

              child: ListTile(
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
            ),

            InkWell(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => privacypolicy(),));
              },
              child: ListTile(
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
