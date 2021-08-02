import 'package:flutter/material.dart';
import 'account.dart';
class FirstRoute extends Stateless Widget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Center(
        drawer: Drawer(
          child: Column(
            children: [
              new UserAccountsDrawerHeader(
                  accountName: new Text(""),
                  accountEmail: new Text("_emailcontroller"),
                  currentAccountPicture: new CircleAvatar(
                    child: Icon(Icons.person),
                  )),
              ListTile(title: Text("Order History"), leading: Icon(Icons.list)),
              ListTile(
                title: Text("Help & Support"),
                leading: Icon(Icons.call),
              ),
              ListTile(title: Text("Updates"), leading: Icon(Icons.business)
              onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context)=> SecondRoute())),
              ListTile(title: Text("Log Out"), leading: Icon(Icons.logout)),
            ],
          ),
        ),
      ),
    );
  }
  class SecondRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        drawer: Drawer(
          child: Column(
            children: [
              new UserAccountsDrawerHeader(
                  accountName: new Text(""),
                  accountEmail: new Text("_emailcontroller"),
                  currentAccountPicture: new CircleAvatar(
                    child: Icon(Icons.image),
                  )),
              ListTile(title: Text("Refer a Friend"), leading: Icon(Icons.person_add)),
              ListTile(
                title: Text("Purchase History"),
                leading: Icon(Icons.list),
              ),
              ListTile(title: Text("Logout"), leading: Icon(Icons.logout)
              onTap: () {
            Navigator.pop(context);
          },
          child: Text('Go back!'),
      ),
      ListTile(title: Text("Tutorial",leading: Icon("Icons.timer))
    ],
   ),
  ), 
 );
}
}
Future<bool> _exitApp(BuildContext context) {
    return showDialog(
          context: context,
          child: AlertDialog(
            title: Text('Are you sure you want to logout?'),
            actions: <Widget>[
              FlatButton(
                onPressed: () {
                  Navigator.of(context).pop(false);
                },
                child: Text('No'),
              ),
              FlatButton(
                onPressed: () {
                  SystemChannels.platform.invokeMethod('SystemNavigator.pop');
                },
                child: Text('Yes,Logout'),
              ),
            ],
          ),
        ) ??
        false;
  }
