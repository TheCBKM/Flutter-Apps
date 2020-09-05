import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:statemanagement/OurStore.dart';
import 'package:statemanagement/screens/Screen1.dart';
import 'package:statemanagement/screens/Screen2.dart';

class ScreenRouter extends StatefulWidget {
  @override
  _ScreenRouterState createState() => _ScreenRouterState();
}

class _ScreenRouterState extends State<ScreenRouter> {
  @override
  Widget build(BuildContext context) {
    int i = Provider.of<OurStore>(context).getVIew;
    Widget currentScreen;
    if (i == 0)
      currentScreen = Screen1();
    else
      currentScreen = Screen2();
    print(i);
    return Scaffold(
      appBar: AppBar(title: Text("Sate_Management")),
      body: currentScreen,
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Screen1'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Screen2'),
          ),
        ],
        currentIndex: i,
        selectedItemColor: Colors.amber[800],
        onTap: (x) {
          Provider.of<OurStore>(context, listen: false).changeView(x);
        },
      ),
    );
  }
}
