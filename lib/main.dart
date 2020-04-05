import 'package:flutter/material.dart';
import 'package:flutterapiapp/app.dart';

void main() => runApp(App());

//class MyApp extends StatelessWidget {
//  // This widget is the root of your application.
//  @override
//  Widget build(BuildContext context) {
//    return MaterialApp(
//      debugShowCheckedModeBanner: false,
//      title: 'Flutter Demo',
//      theme: ThemeData(
//        primarySwatch: Colors.blue,
//      ),
//      home: Locations(),
//    );
//  }
//}
//
//class MyHomePage extends StatefulWidget {
//  MyHomePage({Key key, this.title}) : super(key: key);
//  final String title;
//
//  @override
//  _MyHomePageState createState() => _MyHomePageState();
//}
//
//class _MyHomePageState extends State<MyHomePage> {
//  int _counter = 0;
//  var message = "i have been clicked less than 20 times";
//
//  void _incrementCounter() {
//    setState(() {
//      _counter++;
//      if (_counter > 20) message = "i have been clicked $_counter times";
//    });
//  }
//
//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//      appBar: AppBar(
//        title: Text(widget.title),
//      ),
//      body: Center(
//        child: Column(
//          mainAxisAlignment: MainAxisAlignment.spaceAround,
//          children: <Widget>[
//            Text(
//              message,
//              style: TextStyle(backgroundColor: Colors.blue),
//            ),
//            Text(
//              '$_counter',
//              style: Theme.of(context).textTheme.display1,
//            ),
//            Image.asset(
//              "assets/images/beard_oil.jpg",
//            )
//          ],
//        ),
//      ),
//      floatingActionButton: FloatingActionButton(
//        onPressed: _incrementCounter,
//        tooltip: 'Increment',
//        child: Icon(
//          Icons.add,
//          semanticLabel: 'clicked',
//          color: Colors.purple,
//          size: 36.0,
//        ),
//      ),
//    );
//  }
//}
