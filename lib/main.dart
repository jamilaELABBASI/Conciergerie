import 'package:flutter/material.dart';

import 'Pages/MyHomePage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        drawer: Drawer(
          backgroundColor: Colors.white,
        ),
        appBar: PreferredSize(
            preferredSize: Size.fromHeight(80),
            child: AppBar(
              iconTheme: IconThemeData(color: Colors.white, size: 40),
              backgroundColor: Color(0xFF132C39),
              title: Column(
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  Image(
                    image: AssetImage("images/logo.png"),
                    width: 90,
                    height: 50,
                  ),
                ],
              ),
              centerTitle: true,
            )),
        body: MyHomePage(),
        //body: Articlewidget(),
      ),
    );
  }
}
