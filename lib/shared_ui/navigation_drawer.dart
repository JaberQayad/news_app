import 'package:flutter/material.dart';

class NavigationDrawer extends StatefulWidget {
  const NavigationDrawer({Key? key}) : super(key: key);

  @override
  _NavigationDrawerState createState() => _NavigationDrawerState();
}

class _NavigationDrawerState extends State<NavigationDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView.builder(
        itemBuilder: (context, position) {
          return ListTile(
            title: Text('HOME', style: TextStyle(color: Colors.grey.shade700),),
            trailing: Icon(Icons.chevron_right, color: Colors.grey.shade400,),
            onTap: (){},
          );
        },
        itemCount: 8,
      ),
    );
  }
}
