import 'package:flutter/material.dart';
import 'package:news_app/models/nav_menu.dart';
import 'package:news_app/screens/home_screen.dart';
import 'package:news_app/screens/headline_news.dart';

class NavigationDrawer extends StatefulWidget {
  const NavigationDrawer({Key? key}) : super(key: key);

  @override
  _NavigationDrawerState createState() => _NavigationDrawerState();
}

class _NavigationDrawerState extends State<NavigationDrawer> {
  List<NavMenuItem> navigationMenu = [
    NavMenuItem("Explore", () => HomeScreen()),
    NavMenuItem("HeadLine News", () => HeadLineNews()),
  ];

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Padding(
        padding: const EdgeInsets.only(top: 75, left: 24),
        child: ListView.builder(
          itemBuilder: (context, position) {
            return Padding(
              padding: const EdgeInsets.all(8),
              child: ListTile(
                title: Text(
                  navigationMenu[position].title,
                  style: TextStyle(
                    color: Colors.grey.shade700,
                    fontSize: 22,
                  ),
                ),
                trailing: Icon(
                  Icons.chevron_right,
                  color: Colors.grey.shade400,
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) {
                      return navigationMenu[position].destination();
                    }),
                  );
                },
              ),
            );
          },
          itemCount: navigationMenu.length,
        ),
      ),
    );
  }
}
