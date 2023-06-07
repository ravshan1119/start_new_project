import 'package:flutter/material.dart';
import 'package:start_new_project/main.dart';
import 'package:start_new_project/model/model.dart';

class Cars extends StatelessWidget {
  const Cars({Key? key, required this.model}) : super(key: key);

  final Model model;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar:
        AppBar(
          elevation: 0,
        ),
        body: Center(
          child: Container(
            height: MediaQuery.of(context).size.height / 2.5,
            width: MediaQuery.of(context).size.width - 40,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10), color: Colors.grey),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                      child: Image.asset(model.image,height: 200,width: MediaQuery.of(context).size.width-40,fit: BoxFit.cover,)),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(model.year),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(model.name),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(model.isElectr ? "ha" : "yoq"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
