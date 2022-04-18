import 'package:flutter/material.dart';
import 'package:healthex/disease.dart';
import 'package:healthex/homepage.dart';
import 'package:url_launcher/url_launcher.dart';

class OverviewHeart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              card(
                //TODO: Open website
                myStyle: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.normal),
                myWidget: Disease(),
                url:
                    'https://upload.wikimedia.org/wikipedia/commons/f/f4/A_man_having_a_Heart_Attack.png',
                t: "About",
                d: "Heart disease is the leading cause of death in the United States. The term “heart disease” refers to several types of heart conditions. In the United States, the most common type of heart disease is coronary artery disease (CAD), which can lead to heart attack.",
              ),
              card(
                //TODO: Open website
                myStyle: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.normal),
                myWidget: Disease(),
                url:
                    'https://www.udmi.net/wp-content/uploads/2020/02/UDMI_Cardiovascular-Disease.png',
                t: "Types of heart Disease",
                d: "Coronary artery disease, arrhythmia, heart valve disease and heart failure are the four most common types of heart disease.",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
