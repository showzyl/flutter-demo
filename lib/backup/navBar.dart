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
      title: '再富',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: MyHomePage(title: '快讯'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}


class _MyHomePageState extends State<MyHomePage> {
  int _times = 0;
  bool _isClickBack = false;

  void _incrementCounter() {
    setState(() {
      _times++;
    });
  }

  void _onPressBack() {
    setState(() {
      _isClickBack = !_isClickBack;
    });
  }

  @override
  Widget build(BuildContext context) {
    // `Scaffold`是承载`material design`控件的布局控件
    return Scaffold(
      appBar: AppBar(
        // `leading` 左上角的控件，一般放一个icon，位置如上图
        leading: IconButton(icon: Icon(Icons.arrow_back), onPressed: _onPressBack),
        // 中间`文案`
        title: Text(widget.title),
        // `actions` 定义右上角一系列的组件，位置如上图
        actions: <Widget>[
          IconButton(icon: Icon(Icons.add), onPressed: _incrementCounter),
          IconButton(icon: Icon(Icons.dashboard), onPressed: () {}),
          IconButton(icon: Icon(Icons.cached), onPressed: () {}),
        ],
        flexibleSpace: Container(
          color: Colors.blue,
        ),
        bottom: PreferredSize(
          child: Container(
            height: 50,
            width: double.infinity,
            color: Colors.grey,
            child: Text('bottom'),
          ),
          preferredSize: Size(30, 100),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              _isClickBack ? '点击返回' : '没有点击返回'
            ),
            Text(
              '点击了: $_times 次',
              style: Theme.of(context).textTheme.display1,
            ),
          ],
        ),
      ),

    );
  }
}
