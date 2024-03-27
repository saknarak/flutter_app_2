import 'package:flutter/material.dart';
import 'package:flutter_app_2/pages/star_tab.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  // final tabCtrl = TabController(length: 2, vsync: );

  @override
  Widget build(BuildContext context) {
    final tabBar = TabBar(
      tabs: [
        Text('ภาพรวม'),
        Text('นักเรียน'),
      ],
    );
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Column(
            children: [
              Text('ระบบเช็คชื่อนักเรียน'),
              tabBar,
            ],
          ),
        ),
        body: TabBarView(
          children: [
            StarTab(),
            Text('รายชื่อนักเรียนทั้งหมด'),
          ],
        ),
        bottomNavigationBar: tabBar,
        floatingActionButton:
            ElevatedButton(onPressed: () {}, child: Text('เช็คชื่อ')),
        drawer: Column(
          children: [
            Text('Item 1'),
            Text('Item 2'),
          ],
        ),
      ),
    );
  }
}
