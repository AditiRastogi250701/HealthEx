import 'package:flutter/material.dart';
import 'package:healthex/Heart/FormHeart.dart';
import 'package:healthex/Heart/OverviewHeart.dart';
import 'package:healthex/Heart/SymptomsHeart.dart';
import 'package:healthex/disease.dart';
import 'package:healthex/subpages/Form.dart';
import 'package:healthex/subpages/Overview.dart';
import 'package:healthex/subpages/Symptoms.dart';

class AboutHeart extends StatelessWidget {
//   const
// About({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        // ignore: prefer_const_literals_to_create_immutables
        body: TabBarView(
          children: [
            OverviewHeart(),
            SymptomsHeart(),
            FormsHeart(),
          ],
        ),

        appBar: AppBar(
          bottom: TabBar(
            tabs: [
              Tab(
                child: Text('Overview'),
              ),
              Tab(child: Text('Symptoms')),
              Tab(
                child: Text('Form'),
              ),
            ],
          ),

          backgroundColor: Colors.black,
          // ignore: prefer_const_constructors
          title: Text(
            "Cardiovascular Disease",
            style: TextStyle(
              fontSize: 25,
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
