// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:healthex/disease.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      drawer: Drawer(
        backgroundColor: Colors.white,
        child: Icon(
          Icons.abc,
          color: Colors.black,
        ),
      ),
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
              itemBuilder: (context) => [
                    PopupMenuItem(
                      child: Text("About"),
                      value: 1,
                    ),
                    PopupMenuItem(
                      child: Text("Exit"),
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
                url:
                    'https://www.cancer.gov/sites/g/files/xnrzdm211/files/styles/cgov_article/public/cgov_contextual_image/100/900/3/files/dividing-breast-cancer-cell-article-only.jpg?itok=7_RRcbFU',
                t: 'Know more about Cancer',
                d: 'ajldfkjakdfj addklfjalkdfjalk akldfjakldfj adklfjalkdf jakldfja kldfjakd falkfdfj kladkfj',
              ),
              SizedBox(
                height: 10,
              ),
              card(
                url:
                    'https://medicaldialogues.in/h-upload/2020/05/13/128694-cancer.webp',
                t: 'Know more about Cancer',
                d: 'ajldfkjakdfj addklfjalkdfjalk akldfjakldfj adklfjalkdf jakldfja kldfjakd falkfdfj kladkfj',
              ),
              SizedBox(
                height: 10,
              ),
              card(
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
  // ignore: use_key_in_widget_constructors
  card({required this.t, required this.d, required this.url});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Disease()),
        );
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: Colors.grey.shade900,
        ),
        //height: 200,
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  t,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Image(image: NetworkImage(url)),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                d,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.normal),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
