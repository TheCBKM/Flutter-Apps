import 'package:flutter/material.dart';
import 'package:share_data/constant/Constant.dart';
import 'package:share_data/screen/HomeScreen.dart';
import 'package:share_data/screen/SplashScreen.dart';

void main() => runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        title: 'QR GENERATOR',
        routes: <String, WidgetBuilder>{
          HOME_SCREEN: (BuildContext context) => HomeScreen(),
        },
        home: SplashScreen(),
      ),
    );
