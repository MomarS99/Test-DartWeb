// ignore_for_file: prefer_const_constructors, sort_child_properties_last, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, use_key_in_widget_constructors, prefer_const_declarations, avoid_print, unused_local_variable, unused_import

import 'dart:convert';
//import 'dart:js_interop';

import 'package:cardapp/country.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  Future<void> readJson() async {
    // final String response = await rootBundle.loadString('assets/test.json');
    // final data = await json.decode(response);

    // for (int i = 0; i < data.length; i++) {
    //   print(data[i]['city']);
    // }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 30, 228, 215),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 50.0,
              backgroundImage: AssetImage('images/pray.jpg'),
            ),
            Text(
              "الأذان",
              style: TextStyle(
                fontFamily: 'Amiri',
                fontSize: 35.0,
                color: Colors.black,
                fontWeight: FontWeight.bold,
                height: 2.5,
              ),
            ),
            Text(
              "أوقات الصلاة في المملكة المغربية",
              style: TextStyle(
                fontFamily: 'Amiri',
                fontSize: 25.0,
                color: Colors.brown[800],
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              width: 250,
              height: 20.0,
              child: Divider(
                color: Color.fromARGB(255, 0, 0, 0),
              ),
            ),
            Card(
              margin: EdgeInsets.all(20.0),
              child: ListTile(
                leading: Icon(
                  Icons.calendar_today,
                  size: 30.0,
                  color: Colors.black,
                ),
                title: Text(
                  'جدول زمني لأوقات الصلاة',
                  style: TextStyle(
                    fontFamily: 'Amiri',
                    fontSize: 22.0,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            Card(
              margin: EdgeInsets.all(20.0),
              child: ListTile(
                leading: Icon(
                  Icons.wysiwyg,
                  size: 30.0,
                  color: Colors.black,
                ),
                title: Text(
                  'أذكارالصباح و المساء',
                  style: TextStyle(
                    fontFamily: 'Amiri',
                    fontSize: 22.0,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MyHomePage()),
                );
              },
              style: TextButton.styleFrom(
                padding: EdgeInsets.all(20.0),
              ),
              child: Card(
                margin: EdgeInsets.all(0.0),
                child: ListTile(
                  leading: Icon(
                    Icons.login,
                    size: 30.0,
                    color: Colors.black,
                  ),
                  title: Text(
                    'إبداء',
                    style: TextStyle(
                      fontFamily: 'Amiri',
                      fontSize: 30.0,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
