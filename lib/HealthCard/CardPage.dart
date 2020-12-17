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

  String input = "";
  List<Task> records = List();
  String prescription;

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
                                    onChanged: (String value) {
                                      input = value;
                                    },
                                  ),
                                  actions: <Widget>[
                                    FlatButton(
                                      onPressed: () {
                                        setState(() {
                                          records.add(Task(input, formatted.toString(), prescription));
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
                            scrollDirection: Axis.vertical,
                            shrinkWrap: true,
                            itemCount: records.length,
                            itemBuilder: (context, position) {

                              return Dismissible(
                                  key: Key(records[position].toString()),
                                  // background: ,
                                onDismissed: (direction) {
                                    if (direction==DismissDirection.startToEnd) {
                                      showDialog(
                                        context: context,
                                        builder: (BuildContext context){
                                          return AlertDialog(
                                            content: Text('Badhiya'),
                                          );
                                        },
                                      );
                                    }

                                    if (direction==DismissDirection.endToStart) {
                                      showDialog(
                                        context: context,
                                        builder: (BuildContext context){
                                          return AlertDialog(
                                            content: Text('Badhiya'),
                                          );
                                        },
                                      );
                                    }
                                },
                                  child: Container(
                                    child: Row(
                                    children: [
                                      Container(
                                        height: 80.0,
                                        width: 10.0,
                                        color: Colors.red,
                                      ),

                                      Expanded(
                                          child: Padding(
                                            padding: EdgeInsets.all(8.0),
                                            child: Column(
                                              mainAxisAlignment: MainAxisAlignment.start,
                                              children: [
                                                Container(
                                                  alignment: Alignment.topLeft,
                                                  child: Text(input, style: TextStyle(
                                                    fontSize: 24.0,
                                                    color: Colors.black,
                                                    fontWeight: FontWeight.bold,
                                                  ),),
                                                ),

                                                Container(
                                                  alignment: Alignment.topLeft,
                                                  child: Text(input, style: TextStyle(
                                                    fontSize: 18.0,
                                                    color: Colors.grey,
                                                    fontWeight: FontWeight.bold,
                                                  ),),
                                                ),

                                                Container(
                                                  alignment: Alignment.centerRight,
                                                  child: IconButton(
                                                      icon: Icon(Icons.delete),
                                                      onPressed: () {})
                                                )

                                              ],
                                            ),
                                          ),
                                      )
                                    ],
                                    )
                                  ),);
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
//
// {
// return Dismissible(key: Key(records[index]), child:
// Card(
// elevation: 4,
// margin: EdgeInsets.all(10.0),
// shape: RoundedRectangleBorder(
// borderRadius: BorderRadius.circular(8)
// ),
// child: ListTile(
// title: Text(records[index]),
// trailing: IconButton(
// icon: Icon(Icons.delete),
// onPressed: () {
// setState(() {
// records.removeAt(index);
// });
// },
// color: Colors.black,
// ),)
// ));
// }