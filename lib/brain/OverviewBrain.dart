import 'package:flutter/material.dart';
import 'package:healthex/disease.dart';
import 'package:healthex/homepage.dart';
import 'package:url_launcher/url_launcher.dart';

class OverviewBrain extends StatelessWidget {
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
                    'https://www.indushealthplus.com/media/article_img/brain-tumour-types-causes-symptoms-prevention-thumb.jpg',
                t: "About",
                d: "A brain tumor is a mass or growth of abnormal cells in your brain. Many different types of brain tumors exist. Some brain tumors are noncancerous (benign), and some brain tumors are cancerous (malignant). Brain tumors can begin in your brain (primary brain tumors), or cancer can begin in other parts of your body and spread to your brain as secondary (metastatic) brain tumors. Our model helps in detecting glioma,meningioma and pituitary tumors",
              ),
              card(
                //TODO: Open website
                myStyle: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.normal),
                myWidget: Disease(),
                url:
                    'https://www.hopkinsmedicine.org/-/media/images/health/1_-conditions/brain/parts-of-brain-diagram.ashx?h=440&w=640&hash=9D0811590C35D7264308D892CB65D6B3',
                t: "Types of brain tumor",
                d: "",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
