import 'package:flutter/material.dart';

import '../Dashboard_page.dart';
import '../menuBar.dart';


class contactus extends StatefulWidget{
  contactus({Key key, this.title}) : super(key: key);

  final String title;
  @override
  _contactusState createState() => _contactusState();
}

class _contactusState extends State<contactus> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF4be8ce),
        elevation: 0.0,
        actions: [
          RaisedButton(
              color: Color(0xFF4be8ce),
              elevation: 0.0,
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => DashboardPage()));
              },
              child: Row(
                  children: [Icon(
                    Icons.arrow_back_ios,
                    color: Colors.white,
                    size: 18,
                  ),
                    Text(
                      "Back",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontFamily: "Montserrat",
                        fontWeight: FontWeight.bold,
                      ),)
                  ])

          )
        ],
      ),
      drawer: sideBar(),
      body: Padding(
        padding: const EdgeInsets.only(top: 60.0, right: 20.0, left: 20.0),
        child: Column(
          children: [
            TextFormField(
              keyboardType: TextInputType.multiline,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black,)
                ),
                labelText: 'Subject',
                prefixIcon: Icon(Icons.query_builder_outlined, color: Colors.black, size: 20.0,),
                labelStyle: TextStyle(
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.bold,
                  color: Colors.grey,
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(top: 50.0),
              child: Column(
                children: [
                  TextFormField(
                    keyboardType: TextInputType.multiline,
                    maxLines: 6,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black,)
                      ),
                      labelText: '  Enter here your Query / Feedback',
                      // prefixIcon: Icon(Icons.request_page_rounded, color: Colors.black, size: 20.0,),
                      labelStyle: TextStyle(
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.bold,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 50.0, right: 20.0),
                  child: new RaisedButton(
                    padding: const EdgeInsets.only(right: 20.0, left: 20.0, top: 15.0, bottom: 15.0),
                    textColor: Colors.white,
                    color: Color(0xFF4be8ce),
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(builder: (context) => DashboardPage(),));
                    },
                    child: new Text("Send Query"),
                  ),
                ),
              ],
            )
          ],
        ),
          // ],
            ),
    );
  }
}
