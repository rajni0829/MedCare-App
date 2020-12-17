import 'package:flutter/material.dart';
import 'package:flutter_medcare/Dashboard_page.dart';
import '../menuBar.dart';
import 'package:intl/intl.dart';

import 'taskPage.dart';


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

  static final DateTime now = DateTime.now();
  static final DateFormat formatter = DateFormat.yMMMMd('en_US');

  @override
  _HealthCardState createState() => _HealthCardState();
}

class _HealthCardState extends State<HealthCard> {
  final String formatted = HealthCard.formatter.format(HealthCard.now);

  List<Task> records = List();
  String prescription;

  final subject = TextEditingController();

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
      backgroundColor: Colors.white,

      body: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 30.0),
                  width: MediaQuery.of(context).size.width,
                  height: 200,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Color(0xFF4be8ce),
                            Colors.white,
                          ]
                      ),
                      borderRadius: BorderRadius.circular(10.0),
                      boxShadow: [BoxShadow(
                        color: Colors.grey,
                        offset: Offset(0.0, 1.0), //(x,y)
                        blurRadius: 6.0,
                      )]
                  ),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,

                      children: [Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 30.0, bottom: 30.0, right: 20.0),
                          height: 80.0,
                          width: 70.0,
                          decoration: BoxDecoration(
                              color: Color(0xFF242d68),
                              border: Border.all(width:2, color: Colors.grey[100]),
                              borderRadius: BorderRadius.circular(5.0),
                          ),
                          child: Image.network("https://talentedteacherjobs.co.uk/wp-content/uploads/2018/12/Passport-size-Photo.jpg",
                            fit: BoxFit.cover,
                          ),
                        ),

                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Obulpathi Naidu",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                fontSize: 16.0,
                                letterSpacing: 1.0,
                              ),),

                            SizedBox(height: 5.0,),

                            Text("19",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16.0,
                                letterSpacing: 1.0,
                              ),),

                            SizedBox(height: 5.0,),

                            Text("A+",
                                style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16.0,
                                  letterSpacing: 1.0,
                            ),),

                            SizedBox(height: 5.0,),

                            Text("Gender",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16.0,
                                letterSpacing: 1.0,
                              ),),

                            SizedBox(height: 30.0,),

                          ],
                        )

                      ],
                    ),

                      Text("8561 4523 78546",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 22.0,
                            fontFamily: "Montserrat"
                        ),)
                    ]
                  ),
                ),

                Container(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      color: Color(0xFF4be8ce),
                      borderRadius: BorderRadius.only(topRight: Radius.circular(20.0) ,topLeft: Radius.circular(20.0)),
                      boxShadow: [BoxShadow(
                        color: Colors.grey,
                        offset: Offset(0.0, 1.0), //(x,y)
                        blurRadius: 6.0,
                      )]
                  ),

                  child: Column(
                    children: [
                      SizedBox(height: 10.0,),
                      RaisedButton(
                        onPressed: () {
                          showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return AlertDialog(
                                  title: Text(
                                      "Insert Record"
                                  ),
                                  content: TextFormField(
                                    controller: subject,
                                    validator: (input) {
                                      if(input.isEmpty){
                                        return 'Subject needed';
                                      }else{
                                        return null;
                                      }
                                    },
                                    keyboardType: TextInputType.visiblePassword,
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                          borderSide: BorderSide(color: Colors.black,)
                                      ),
                                      labelText: 'Enter Subject',
                                      labelStyle: TextStyle(
                                        fontFamily: 'Montserrat',
                                        fontWeight: FontWeight.bold,
                                        color: Colors.grey,
                                      ),),
                                  ),
                                  actions: <Widget>[
                                    FlatButton(
                                      onPressed: () {
                                        setState(() {
                                          records.add(Task(subject.text, formatted.toString(), prescription));
                                        });
                                        Navigator.of(context).pop();
                                        },
                                      child: Text("Add"),)

                                  ],
                                );
                              }
                          );
                        },
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.00),
                        ),
                        color: Color(0xffffffff),
                        padding: EdgeInsets.only(right: 20.0, left: 20.0, top: 10.0, bottom: 10.0),
                        child: Text(
                          'Add Record',
                          style: TextStyle(
                            fontFamily: "Montserrat",
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ),

                      // Text(formatted.toString()),

                      Container(
                        margin: EdgeInsets.only(top: 20.0, right: 10.0, left: 10.0),
                        child: ListView.builder(
                          physics: AlwaysScrollableScrollPhysics(),
                            shrinkWrap: true,
                            itemCount: records.length,
                            itemBuilder: (context, position) {

                              return Dismissible(
                                  key: Key(records[position].toString()),
                                  // background: ,
                                onDismissed: (DismissDirection direction) {
                                    setState(() {
                                      records.removeAt(position);
                                    });
                                },
                                  child: Container(
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                          borderRadius: BorderRadius.circular(10.0),
                                          boxShadow: [BoxShadow(
                                            color: Colors.grey,
                                            blurRadius: 7,
                                            spreadRadius: 2,
                                            offset: Offset(0, 1),
                                          )]
                                      ),
                                    margin: EdgeInsets.only(right: 10.0, left: 10.0, bottom: 15.0),
                                    child: Row(
                                    children: [
                                      Container(
                                        height: 40.0,
                                        width: 10.0,
                                        color: Colors.red,
                                      ),

                                      Expanded(
                                          child: Padding(
                                            padding: EdgeInsets.all(1.0),
                                            child: Column(
                                              mainAxisAlignment: MainAxisAlignment.start,
                                              children: [
                                                Container(
                                                  padding: EdgeInsets.only(left:10.0, bottom: 5.0, top: 10.0),
                                                  alignment: Alignment.topLeft,
                                                  child: Text(records[position].subject, style: TextStyle(
                                                    fontSize: 18.0,
                                                    color: Colors.black,
                                                    fontFamily: "Montserrat",
                                                    fontWeight: FontWeight.bold,
                                                  ),),
                                                ),

                                                Container(
                                                  padding: EdgeInsets.only(left:10.0, bottom: 10.0),
                                                  alignment: Alignment.topLeft,
                                                  child: Text(records[position].date, style: TextStyle(
                                                    fontSize: 15.0,
                                                    color: Colors.grey,
                                                  ),),
                                                ),

                                              ],
                                            ),

                                          ),
                                      ),

                                      Container(
                                        padding: EdgeInsets.only(right: 10.0),
                                          alignment: Alignment.centerRight,
                                          child: IconButton(
                                              icon: Icon(Icons.note_sharp),
                                              onPressed: () {})
                                      )
                                    ],
                                    )
                                  ),
                              );
                            }

                            ),
                      ),

                    ],
                  ),
                )
              ],

            ),
          )
      ),
    );
  }
}