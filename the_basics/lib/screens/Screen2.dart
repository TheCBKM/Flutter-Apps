import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:the_basics/OurStore.dart';

class Screen2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      
      child: Column(
        children: <Widget>[
          Text("screen2"),
          Text(Provider.of<OurStore>(context).getText),
          TextFormField(
            initialValue: Provider.of<OurStore>(context).getText,
            onChanged: (val) {
              Provider.of<OurStore>(context, listen: false).changeText(val);
            },
          ),
        ],
      ),
    );
  }
}
