import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

import '../OurStore.dart';

class Screen1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        
        Expanded(
          child: Text("screen1"),
        ),
        Expanded(
          child: Text(Provider.of<OurStore>(context).getText),
        )
      ],
    ));
  }
}
