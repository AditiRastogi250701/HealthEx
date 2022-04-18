// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:healthex/about.dart';
import 'package:healthex/disease.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade900,
      // drawer: Drawer(
      //   backgroundColor: Colors.black,
      //   child: Icon(
      //     Icons.abc,
      //     color: Colors.black,
      //   ),
      // ),
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          'HealthEx',
          style: TextStyle(
            fontSize: 25,
            fontStyle: FontStyle.italic,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        actions: [
          PopupMenuButton(
              color: Colors.grey.shade900,
              onSelected: (value) {
                setState(() {
                  if (value == 1) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Disease()),
                    );
                  }
                });
              },
              itemBuilder: (context) => [
                    PopupMenuItem(
                      child: Text(
                        "About",
                        style: TextStyle(color: Colors.white),
                      ),
                      value: 1,
                    ),
                    PopupMenuItem(
                      onTap: () {
                        SystemNavigator.pop();
                      },
                      child:
                          Text("Exit", style: TextStyle(color: Colors.white)),
                      value: 2,
                    )
                  ])
        ],
        elevation: 2,
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              card(
                myStyle: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.normal),
                myWidget: About(),
                url:
                    'https://neurologysleepcentre.com/blog/wp-content/uploads/2021/12/parkinson2.jpg',
                t: "Parkinson's Disease",
                d: "A disorder of the central nervous system that affects movement, often including tremors. Nerve cell damage in the brain causes dopamine levels to drop, leading to the symptoms of Parkinson's. Parkinson's often starts with a tremor in one hand .......",
              ),
              SizedBox(
                height: 10,
              ),
              card(
                myStyle: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.normal),
                myWidget: About(),
                url:
                    'https://medicaldialogues.in/h-upload/2020/05/13/128694-cancer.webp',
                t: 'Know more about Cancer',
                d: 'ajldfkjakdfj addklfjalkdfjalk akldfjakldfj adklfjalkdf jakldfja kldfjakd falkfdfj kladkfj',
              ),
              SizedBox(
                height: 10,
              ),
              card(
                myStyle: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.normal),
                myWidget: About(),
                url:
                    'https://www.sciencealert.com/images/2020-06/processed/cancer_topic_1024.jpg',
                t: 'Know more about Cancer',
                d: 'ajldfkjakdfj addklfjalkdfjalk akldfjakldfj adklfjalkdf jakldfja kldfjakd falkfdfj kladkfj',
              ),
              SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class card extends StatelessWidget {
  String t = "";
  String d = "";
  String url = "";
  Widget myWidget;
  TextStyle myStyle;
  // ignore: use_key_in_widget_constructors
  card(
      {required this.myStyle,
      required this.t,
      required this.d,
      required this.url,
      required this.myWidget});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => myWidget),
        );
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.black,
        ),
        //height: 200,
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.only(left: 10.0, right: 10, top: 10),
                child: Text(
                  t,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Image(image: NetworkImage(url)),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10.0, right: 10, bottom: 20),
              child: Text(
                d,
                style: myStyle,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
