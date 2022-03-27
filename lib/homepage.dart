// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            SizedBox(
              height: 30,
            ),
            card(),
            SizedBox(
              height: 20,
            ),
            card(),
            SizedBox(
              height: 20,
            ),
            card(),
            SizedBox(
              height: 20,
            ),
            card(),
            SizedBox(
              height: 20,
            ),
            card(),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }

  Column card() {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
              color: Colors.purple,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10), topRight: Radius.circular(10))),
          height: 30,
          width: double.infinity,
          child: Center(
            child: Text('Hello',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                )),
          ),
        ),
        Container(
          padding: EdgeInsets.all(10),
          height: 100,
          color: Colors.purple,
          child: Row(
            children: [
              Container(
                height: 90,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10))),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image(
                    image: NetworkImage(
                        'https://neurologysleepcentre.com/blog/wp-content/uploads/2021/12/parkinson2.jpg'),
                  ),
                ),
              ),
              SizedBox(
                width: 5,
              ),
              Container(
                width: 220,
                child: RichText(
                  text: TextSpan(
                      text:
                          "Hello lkjalkdfj akdlfjak akldfj kladjf akdfjalk adkfjaldkfj alkdfjalk"),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
