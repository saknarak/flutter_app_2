import 'package:flutter/material.dart';
import 'package:flutter_app_2/pages/star_tab.dart';

class Home2Page extends StatefulWidget {
  const Home2Page({super.key});

  @override
  State<Home2Page> createState() => _Home2PageState();
}

class _Home2PageState extends State<Home2Page>
    with SingleTickerProviderStateMixin {
  late TabController tabCtrl;

  @override
  void initState() {
    super.initState();
    tabCtrl = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: TabBar(
            controller: tabCtrl,
            tabs: [
              Tab(icon: Icon(Icons.star)),
              Tab(
                child: Text('รายชื่อนักเรียน'),
              ),
            ],
          ),
        ),
        body: TabBarView(
          controller: tabCtrl,
          children: [
            StarTab(),
            StarTab(),
          ],
        ));
  }
}
