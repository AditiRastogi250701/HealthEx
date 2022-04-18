import 'package:flutter/material.dart';
import 'package:healthex/disease.dart';
import 'package:healthex/homepage.dart';

class SymptomsHeart extends StatelessWidget {
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
                    'https://www.verywellhealth.com/thmb/gjDmzpOjY9MVFY2qLwiQlYANmQI=/1000x1000/smart/filters:no_upscale()/heart-disease-symptoms-5b0d5b648e1b6e003e6a3347.png',
                t: "The Symptoms of Heart disease include :",
                d: "Signs and symptoms can include: \n1. Chest pain, chest tightness, chest pressure and chest discomfort (angina)\n2. Shortness of breath/n3. Pain, numbness, weakness or coldness in your legs or arms if the blood vessels in those parts of your body are narrowed \n4. Pain in the neck, jaw, throat, upper abdomen or back",
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
