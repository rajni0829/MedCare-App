import 'package:flutter/material.dart';
import 'dashboard.dart';

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bank Expenses',
      home: WalletDashboardPage(),
      theme: ThemeData(fontFamily: "Montserrat"),
      debugShowCheckedModeBanner: false,
    );
  }
}
