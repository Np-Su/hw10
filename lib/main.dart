import 'dart:math';

import 'package:flutter/material.dart';
import 'package:hw10/covid_model.dart';
import 'package:hw10/guess_number/covid_model.dart';
import 'package:hw10/guess_number/login_page.dart';


void main() {
  const app = MyApp();
  runApp(app);
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // callback method
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.purple,
        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
        textTheme: TextTheme(
          headline1: TextStyle(
            fontSize: 30.0,
            fontWeight: FontWeight.bold,
          ),
          headline6: TextStyle(
            fontSize: 22.0,
            //fontWeight: FontWeight.bold,
          ),
          bodyText2: TextStyle(
            fontSize: 14.0,
          ),
        ),
      ),
      home: Test(),
    );
  }
}

class Test extends StatelessWidget {
  Test({Key? key}) : super(key: key);

  final List<CovidModel> covidReportList = [
    CovidModel(name: 'Dyor Optimas', icon: 'accessibility', img: 'img1.png',content:'PiratesKing (PKT) พุ่งแรง 35.8% เพียงชั่วข้ามคืน',namecomment:'Hello World : Go to the Moon'),
    CovidModel(name: 'Life Coch', icon: '6087', img: 'img2.png',content:'ชาว Terra (LUNA) ยิ้ม ราคาเพิ่มขึ้น 11.5%',namecomment:'Dyor Optimas : Pump Pump Pump'),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Doy Report')),
      body: ListView.builder(
          itemCount: covidReportList.length,
          itemBuilder: (context, index) =>
              MyCard(covid: covidReportList[index])),
    );
  }
}

class MyCard extends StatelessWidget {
  final CovidModel covid;

  const MyCard({
    Key? key,
    required this.covid,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5.0,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //Text(covid.date),
            Row(
              children: [
                //SizedBox(width: 20.0),
                Column(
                  children: [
                    Icon(
                      Icons.accessibility,
                      size:30.0,
                    )
                  ],
                ),
                Expanded(
                    child: Text(
                        ' ${covid.name}'),

                ),
                Expanded(
                    child: Text(
                        '')),
                Column(
                    children: [
                      Text('*')
                  ],
                ),
              ],
            ),
            Row(
             children: [
               Image.asset('assets/images/${covid.img}', fit:BoxFit.contain,height: 400,width: 450,)
             ],
            ),
            Text(covid.content),
            SizedBox(
              height: (15),
            ),
            Text(covid.namecomment),
            SizedBox(
              height: (15),
            ),
            Column(
              children: [
                Icon(
                  Icons.favorite,
                  color: Colors.grey,
                  size:30.0,
                ),

              ],
            )
          ],
        ),
      ),
    );
  }
}
