import 'package:flutter/material.dart';

import '../../disease.dart';
import '../../homepage.dart';

class FormsBrain extends StatefulWidget {
  @override
  State<FormsBrain> createState() => _FormsBrainState();
}

class _FormsBrainState extends State<FormsBrain> {
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
        width: double.infinity,
        color: Colors.black,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              Container(
                decoration: BoxDecoration(
                    color: Colors.grey.shade700,
                    borderRadius: BorderRadius.circular(10)),
                height: 200,
                width: 200,
                child: Center(
                    child: Text(
                  'Add Images',
                  style: TextStyle(fontSize: 20, color: Colors.blue),
                )),
              ),
              SizedBox(
                height: 100,
              ),
            ],
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
