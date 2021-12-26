// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:news_app/shared_ui/navigation_drawer.dart';
import 'home_tabs/whats_new.dart';
import 'home_tabs/popular.dart';
import 'home_tabs/favorites.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with SingleTickerProviderStateMixin {

   late TabController _tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(initialIndex: 0, length: 3, vsync: this);
  }


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title:  Text ( "Explore"),
        centerTitle: false,
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.search)),
          IconButton(onPressed: (){}, icon: Icon(Icons.more_vert))
        ],
         bottom: TabBar(
           indicatorColor: Colors.white,
           tabs: [
           Tab( text: "WHAT'S NEW",),
           Tab( text: "POPULAR",),
           Tab( text: "FAVORITES",),
         ],
           controller: _tabController,
         ),
      ),
      drawer:  NavigationDrawer(),
      body: Center(
        child: TabBarView( children:[
          WhatsNew(),
        Popular(),
        Favorites(),

        ], controller: _tabController,),
      ),
    );
  }
}
