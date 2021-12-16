import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: Application()));
}

class Application extends StatefulWidget {
  @override
  _ApplicationState createState() => _ApplicationState();
}

class _ApplicationState extends State<Application> {


  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Drawer'),),
      drawer: Drawer(
        child: ListView(
              children: <Widget>[
                UserAccountsDrawerHeader(
                  accountName: Text('durgesh kumar'),
                  accountEmail: Text('durgeshemail.com'),
                  currentAccountPicture: CircleAvatar(
                    backgroundColor: Colors.black26,
                    child: Text('M'),
                  ),
                  decoration: BoxDecoration(color: Colors.orange),
                ),
                ListTile(
                  title: Text('Page 1'),
                  trailing: Icon(Icons.arrow_forward),
                  onTap: ()=> Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context)=>Row("page1"))),
                ),
                ListTile(
                  title: Text('Page 2'),
                  trailing: Icon(Icons.arrow_forward),
                  onTap: ()=> Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context)=>Row('page2'))),

                ),
                ListTile(
                  title: Text('Close'),
                  trailing: Icon(Icons.close),
                  onTap: (){Navigator.pop(context);},
                ),
              ],
            )
      ),
    );
  }
}










