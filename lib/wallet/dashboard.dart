import 'package:flutter/material.dart';
import '../Dashboard_page.dart';
import '../menuBar.dart';
import 'cardwidget.dart';
import 'components/appbar.dart';
import 'config/colors.dart';
import 'config/size.dart';


class WalletDashboardPage extends StatefulWidget {
  @override
  _WalletDashboardPageState createState() => _WalletDashboardPageState();
}

class _WalletDashboardPageState extends State<WalletDashboardPage> {
  @override
  Widget build(BuildContext context) {
    var height = SizeConfig.getHeight(context);
    var width = SizeConfig.getWidth(context);

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
      body: Container(
        color: AppColors.primaryWhite,
        child: SafeArea(
          child: Column(
            children: <Widget>[
              Container(
                height: height / 8,
                child: CustomAppBar(),
              ),
              Expanded(
                child: CardWidget(),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
