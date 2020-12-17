import 'package:flutter/material.dart';
import 'menuBar.dart';
import 'Dashboard_page.dart';

class Emergency extends StatelessWidget {
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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20.0, 30.0, 20.0, 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Four most important emergency numbers:", style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
                color: Colors.red,
              ),),
              SizedBox(height: 10.0,),

              Text("NATIONAL EMERGENCY NUMBER-112\n"
    "POLICE-100\n"
    "FIRE-101\n"
    "AMBULANCE-102", style: TextStyle(
                fontSize: 15,
              ),),

              SizedBox(height: 20.0,),

              Text(
    "The other list of emergency numbers:", style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
                color: Colors.red,
              ),),
              SizedBox(height: 10.0,),
              Text(
    "Disaster Management Services-108\n"
    "Women Helpline-1091\n"
    "Women Helpline - Domestic Abuse-181\n"
    "Air Ambulance-9540161344\n"
    "Aids Helpline-1097\n"
    "Anti Poison New Delhi -1066 or 011-1066\n"
    "Disaster Management N.D.M.A 011-26701728-1078\n"
    "EARTHQUAKE / FLOOD / DISASTER N.D.R.F: 011-24363260\n"
    "Deputy Commissioner Of Police - Missing Child And Women: 1094\n"
    "Railway Enquiry: 139\n"
    "Senior Citizen Helpline: 1091/ 1291\n"
    "Medical Helpline in Andhra Pradesh, Gujarat, Uttarakhand, Goa, Tamil Nadu, Rajasthan, Karnataka, Assam, Meghalaya, MP and UP- 108\n"
    "Railway Accident Emergency Service:1072\n"
    "Road Accident Emergency Service:1073\n"
    "Road Accident Emergency Service On National Highway For Private Operators:1033\n"
    "ORBO Centre, AIIMS (For Donation Of Organ) Delhi: 1060\n"
    "Call Centre: 1551\n"
    "Relief Commissioner For Natural Calamities: 1070\n"
    "Children In Difficult Situation: 1098\n"
    "Central Vigilance Commission: 1964\n"
    "Tourist Helpline: 1363 or 1800111363\n"
                  "LPG Leak Helpline: 1906",style: TextStyle(
                fontSize: 15,
              ),),
            ],
          ),
        ),
      ),);
  }
}
