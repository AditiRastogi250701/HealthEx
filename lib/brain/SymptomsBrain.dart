import 'package:flutter/material.dart';
import 'package:healthex/disease.dart';
import 'package:healthex/homepage.dart';

class SymptomsBrain extends StatelessWidget {
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
                    fontSize: 15,
                    fontWeight: FontWeight.normal),
                //TODO: Open website
                myWidget: Disease(),
                url:
                    'https://www.verywellhealth.com/thmb/vJwfjHShcVBxBVcOPnp32ADwC8M=/1001x1501/filters:no_upscale():max_bytes(150000):strip_icc()/brain-tumor-symptoms-5b4776a6c9e77c00378214a8.png',
                t: "The Symptoms of brain tumor include :",
                d: "Headache: can be acute or persistent\nMuscular: difficulty walking, muscle weakness, problems with coordination, weakness of one side of the body, or weakness of the arms and legs\nWhole body: dizziness, fatigue, or vertigo\nGastrointestinal: nausea or vomiting\nSensory: pins and needles or reduced sensation of touch\nCognitive: inability to speak or understand language or mental confusion\nAlso common: balance disorder, blurred vision, difficulty speaking, personality change, seizures, or sleepiness",
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
