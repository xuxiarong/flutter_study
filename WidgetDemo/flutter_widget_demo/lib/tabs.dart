import 'package:flutter/material.dart';
import 'package:flutter_widget_demo/pages/AjinPage.dart';
import 'package:flutter_widget_demo/pages/FengliPage.dart';
import 'package:flutter_widget_demo/pages/GengxinPage.dart';
import 'package:flutter_widget_demo/pages/GongbenPage.dart';
import 'package:flutter_widget_demo/pages/JingyuPage.dart';
import 'package:flutter_widget_demo/pages/SuolongPage.dart';
import 'package:flutter_widget_demo/pages/ZeanPage.dart';

class Tabs extends StatefulWidget {
  @override
  _TabsState createState() => _TabsState();
}

class _TabsState extends State<Tabs> {
  var _pageList = [
    SuolongPage(),
    GengxinPage(),
    ZeanPage(),
    GongbenPage(),
    AjinPage(),
    FengliPage(),
    JingyuPage()
  ];
  var _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("骚年们")),
      body: _pageList[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: this._currentIndex,
        onTap: (index) {
          setState(() {
            this._currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                  Icons.home
              ),
              title: Text("索隆")),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.category,
              ),
              title: Text("更新")),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.search,
              ),
              title: Text("泽安")),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.settings,
              ),
              title: Text("宫本")),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.data_usage,
              ),
              title: Text("阿谨")),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.delete,
              ),
              title: Text("风力")),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.image_aspect_ratio,
              ),
              title: Text("鲸鱼"))
        ],
      ),
    );
  }
}
