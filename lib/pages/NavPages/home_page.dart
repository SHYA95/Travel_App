import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_cubit/Widgets/app_large_text.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController tabController = TabController(length: 3, vsync: this);
    return Scaffold(
        body: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
            padding: const EdgeInsets.only(top: 50, left: 20),
            child: Row(
              children: [
                Icon(Icons.menu, size: 30, color: Colors.black54),
                Expanded(child: Container()),
                Container(
                    margin: const EdgeInsets.only(right: 20),
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey.withOpacity(0.5)))
              ],
            )),
        SizedBox(
          height: 40,
        ),
        Container(
            margin: const EdgeInsets.only(left: 20),
            child: AppLargeText(text: "Discover")),
        SizedBox(
          height: 30,
        ),
        //tapbar
        Container(
          child: TabBar(
            controller: tabController,
            labelColor: Colors.black54,
            unselectedLabelColor: Colors.grey,
            tabs: [
              Tab(text: "Places"),
              Tab(text: "inspiration"),
              Tab(text: "Emotiond"),
            ],
          ),
        ),
        Container(
          height: 300,
          width: double.maxFinite,
          child: TabBarView(
              controller: tabController,
              children: [Text("hi"), Text("anyoo"), Text("bye")]),
        ),
      ],
    ));
  }
}
