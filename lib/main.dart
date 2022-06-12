import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'İlham Ver',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: const MyHomePage(title: 'İlham Ver'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    var builder = MediaQuery.of(context);
    final ekranGenisligi = builder.size.width;
    final ekranYuksekligi = builder.size.height;
    String ilham = "İlham Verildi..!";
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(
                top: ekranYuksekligi / 100, bottom: ekranYuksekligi / 100),
            child: SizedBox(
              width: ekranYuksekligi / 4,
              child: Image.asset(
                'images/steveJobs.jpg',
              ),
            ),
          ),
          Text(
            'Steve Jobs',
            style: TextStyle(
              color: Colors.redAccent,
              fontWeight: FontWeight.bold,
              fontSize: ekranGenisligi / 25,
            ),
          ),
          Spacer(),
          Padding(
            padding: EdgeInsets.only(
              left: ekranGenisligi / 100,
              right: ekranGenisligi / 100,
            ),
            child: Text(
              'Steve Jobs İlham Ver likmeaylmiekyalmikeylmouizseylamukieylakiealm',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: ekranGenisligi / 25,
              ),
            ),
          ),
          Spacer(),
          Padding(
            padding: EdgeInsets.only(bottom: ekranYuksekligi / 100),
            child: SizedBox(
              width: ekranGenisligi / 2,
              height: ekranYuksekligi / 15,
              child: ElevatedButton(
                child: Text(
                  'İLHAM VER',
                  style: TextStyle(fontSize: ekranGenisligi / 25),
                ),
                onPressed: () {
                  print('İlham Verildi...');
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.redAccent,
                  textStyle: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
