import 'package:flutter/material.dart';
import 'package:greatplaces/provider/great_places.dart';
import 'package:greatplaces/screens/add_place_screen.dart';
import 'package:provider/provider.dart';

class PlacesListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Your Places'),
        actions: <Widget>[
          IconButton(
            onPressed: () {
              Navigator.of(context).pushNamed(AddPlaceScreen.routeName);
            },
            icon: Icon(Icons.add),
          )
        ],
      ),
      body: FutureBuilder(
        future: Provider.of<GreatPlaces>(context, listen: false)
            .fetchAndSetPlaces(),
        builder: (ctx, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
          return Consumer<GreatPlaces>(
            child: Center(
              child: Text("Got no Places yet!! Start Adding  "),
            ),
            builder: (ctx, greatplaces, ch) => greatplaces.items.length <= 0
                ? ch
                : ListView.builder(
                    itemCount: greatplaces.items.length,
                    itemBuilder: (ctx, i) => ListTile(
                          onTap: () {},
                          title: Text(greatplaces.items[i].title),
                          leading: CircleAvatar(
                            backgroundImage: FileImage(
                              greatplaces.items[i].image,
                            ),
                          ),
                        )),
          );
        },
      ),
    );
  }
}
