import 'package:flutter/material.dart';
import 'package:healthex/disease.dart';
import 'package:healthex/homepage.dart';
import 'package:url_launcher/url_launcher.dart';

class Overview extends StatelessWidget {
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
                    'https://www.homecareassistancerichardson.com/wp-content/uploads/2019/09/Older-Adult-with-Parkinsons.jpeg.jpg',
                t: "About",
                d: "A disorder of the central nervous system that affects movement, often including tremors. Nerve cell damage in the brain causes dopamine levels to drop, leading to the symptoms of Parkinson's. Parkinson's often starts with a tremor in one hand. Other symptoms are slow movement, stiffness and loss of balance. Medication can help control the symptoms of Parkinson's.",
              ),
              card(
                //TODO: Open website
                myStyle: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.normal),
                myWidget: Disease(),
                url:
                    'https://www.verywellhealth.com/thmb/QCWyQsRcFEn_WKZuxSIu5GW6Unw=/1500x1000/filters:no_upscale():max_bytes(150000):strip_icc()/zhansen-5200700_Finaledit2-3e7eb00f1bdb4806adb3f67ca4404894.jpg',
                t: "Stages of Parkinson's Disease",
                d: "",
              ),
            ],
          ),
        ),
      ),
    );
  }
}

_launchURL() async {
  const url = 'https://flutter.io';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
