import 'package:flutter/material.dart';
import 'package:news_app/shared_ui/navigation_drawer.dart';

import 'home_tabs/favorites.dart';
import 'home_tabs/popular.dart';
import 'home_tabs/whats_new.dart';




class HeadLineNews extends StatefulWidget {

  @override
  _HeadLineNewsState createState() => _HeadLineNewsState();
}

class _HeadLineNewsState extends State<HeadLineNews> with SingleTickerProviderStateMixin {



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
        title:  Text ( "HeadLine News"),
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
          Favorites(),
          Popular(),
          Favorites(),

        ], controller: _tabController,),
      ),

    );
  }
}
