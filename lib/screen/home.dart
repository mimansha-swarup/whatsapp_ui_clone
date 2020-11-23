import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsappui_clone/extras/extras.dart';
import 'screens.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(
      length: 4,
      vsync: this,
      initialIndex: 2,
    );
    _tabController.addListener(() {
      setState(() {});
    });
    super.initState();
  }

  checkIcon(int index) {
    if (index == 1) {
      return FloatingActionButton(
        child: Icon(Icons.chat),
        onPressed: () => print('ruko zara'),
        backgroundColor:MyColors.lightTeal ,
      );
    }
    if (index == 2) {
      return FloatingActionButton(
        child: Icon(Icons.camera_alt_rounded),
        onPressed: () => print('pic'),
        backgroundColor:MyColors.lightTeal ,
      );
    }
    if (index == 3) {
      return FloatingActionButton(
        child: Icon(Icons.add_call),
        onPressed: () => print('ruko zara'),
        backgroundColor:MyColors.lightTeal ,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        floatingActionButton: checkIcon(_tabController.index),
        body: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              SliverAppBar(
                pinned: true,
                floating: true,
                snap: true,
                title: Text(
                  "WhatsApp",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    fontSize: 20,
                  ),
                ),
                actions: [
                  IconButton(
                    icon: Icon(Icons.search),
                    color: Colors.white,
                    onPressed: () => print('search'),
                    alignment: Alignment.bottomRight,
                  ),
                  IconButton(
                    icon: Icon(Icons.more_vert),
                    color: Colors.white,
                    onPressed: () => print('search'),
                  ),
                ],
                bottom: TabBar(
                  labelStyle: MyTextStyle.tabBarHeading,
                  unselectedLabelColor: Colors.white54,
                  indicatorColor: Colors.white,
                  indicatorWeight: 3.0,
                  tabs: [
                    Tab(child: Icon(Icons.camera_alt)),
                    Tab(child: Text('CHATS')),
                    Tab(child: Text('STATUS')),
                    Tab(child: Text('CALLS')),
                  ],
                  controller: _tabController,
                ),
              )
            ];
          },
          body: TabBarView(
            controller: _tabController,
            children: [
              Icon(Icons.camera_alt),
              ChatScreen(),
              StatusScreen(),
              CallScreen(),
            ],
          ),
        ),
      ),
    );
  }
}
