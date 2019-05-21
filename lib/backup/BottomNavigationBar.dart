/**
 * 实现下面文章
 * https://blog.csdn.net/mengks1987/article/details/84868953
 */
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '在富',
      home: BottomNavigationBarDemo(),
    );
  }
}

class BottomNavigationBarDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _BottomNavigationBar();
}

class _BottomNavigationBar extends State<BottomNavigationBarDemo> {
  int _selectIndex = 0;
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            title: Text(
              '快讯',
            ),
            icon: Icon(
              Icons.access_alarms,
              color: Colors.grey,
            ),
            activeIcon: Icon(
              Icons.access_alarms,
              color: Colors.red,
            ),
          ),
          BottomNavigationBarItem(
            title: Text(
              '新闻',
            ),
            icon: Icon(
              Icons.access_alarms,
              color: Colors.grey,
            ),
            activeIcon: Icon(
              Icons.access_alarms,
              color: Colors.red,
            ),
          ),
          BottomNavigationBarItem(
            title: Text(
              '我',
            ),
            icon: Icon(
              Icons.access_alarms,
              color: Colors.grey,
            ),
            activeIcon: Icon(
              Icons.access_alarms,
              color: Colors.red,
            ),
          ),
        ],
        iconSize: 24,
        currentIndex: _selectIndex,
        onTap: (index) {
          setState(() {
            _selectIndex = index;
          });
        },
        fixedColor: Colors.red,
        type: BottomNavigationBarType.fixed,
      ),
    );
  }
}

