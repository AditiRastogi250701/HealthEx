import 'package:flutter/material.dart';

import '../../disease.dart';
import '../../homepage.dart';

class FormsHeart extends StatefulWidget {
  @override
  State<FormsHeart> createState() => _FormsHeartState();
}

class _FormsHeartState extends State<FormsHeart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Container(
            width: double.infinity,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20), color: Colors.white),
            child: TextButton(
                onPressed: () {},
                child: Text(
                  'Submit',
                  style: TextStyle(color: Colors.black),
                ))),
      ),
      body: Container(
        color: Colors.black,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                textFields(t1: 'AGE'),
                textFields(t1: 'SEX'),
                textFields(t1: 'CP'),
                textFields(t1: 'TRESTBPS'),
                textFields(t1: 'CHOL'),
                textFields(t1: 'FBS'),
                textFields(t1: 'RESTECG'),
                textFields(t1: 'THALACH'),
                textFields(t1: 'EXANG'),
                textFields(t1: 'OLDPEAK'),
                textFields(t1: 'SLOPE'),
                textFields(t1: 'CA'),
                textFields(t1: 'THAL'),
                textFields(t1: 'TARGET'),
                SizedBox(
                  height: 100,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class textFields extends StatelessWidget {
  String t1;
  // ignore: use_key_in_widget_constructors
  textFields({required this.t1});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Theme(
        data: ThemeData(
          colorScheme: ThemeData().colorScheme.copyWith(
                primary: Colors.white,
              ),
        ),
        child: TextField(
          style: TextStyle(color: Colors.white),
          cursorColor: Colors.white,
          onChanged: (value) {},
          decoration: kcontainerdecoration.copyWith(
              labelStyle: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
              hintText: t1,
              labelText: t1),
        ),
      ),
    );
  }
}

String t = "don't have an account";
Decoration ktextfielddecoration = BoxDecoration(
    borderRadius: BorderRadius.circular(0),
    border: Border.all(color: Colors.white, width: 0));
InputDecoration kcontainerdecoration = InputDecoration(
  labelText: 'Email',
  suffixIconColor: Colors.white,
  fillColor: Colors.black,
  filled: true,
  //icon: Icon(Icons.email),
  contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
  hintText: 'Enter your email',
  hintStyle: TextStyle(fontSize: 15),
  suffixIcon: Icon(
    Icons.done,
    size: 20,
    //color: Colors.green,
  ),
  border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
);
