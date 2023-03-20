import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:foodieapp/homeScreen/view/screens/read_eg.dart';
import 'package:foodieapp/homeScreen/view/screens/write_eg.dart';

class DummyHome extends StatelessWidget {
  const DummyHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => ReadExamples(),));
              }, child: Text("read ")),
               ElevatedButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => WriteExamples(),));
              }, child: Text("write")),
            ],
          ),
        ),
      ),
    );
  }
}