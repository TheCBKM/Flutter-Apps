import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

import '../OurStore.dart';

class Screen1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      children: <Widget>[
        Text("screen1"),
        Text(Provider.of<OurStore>(context).getText),
      ],
    ));
  }
}
