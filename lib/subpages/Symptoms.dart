import 'package:flutter/material.dart';
import 'package:healthex/disease.dart';
import 'package:healthex/homepage.dart';

class Symptoms extends StatelessWidget {
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
                myStyle: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.normal),
                //TODO: Open website
                myWidget: Disease(),
                url:
                    'https://www.homecareassistancerichardson.com/wp-content/uploads/2019/09/Older-Adult-with-Parkinsons.jpeg.jpg',
                t: "The Symptoms of Parkinson's include :",
                d: "1. Bradykinesia \n2. Constipation \n3. Fatigue",
              ),
              // card(
              //   //TODO: Open website
              //   myWidget: Disease(),
              //   url:
              //       'https://www.verywellhealth.com/thmb/QCWyQsRcFEn_WKZuxSIu5GW6Unw=/1500x1000/filters:no_upscale():max_bytes(150000):strip_icc()/zhansen-5200700_Finaledit2-3e7eb00f1bdb4806adb3f67ca4404894.jpg',
              //   t: "Stages of Parkinson's Disease",
              //   d: "",
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
