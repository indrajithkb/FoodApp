// ignore_for_file: inference_failure_on_instance_creation, lines_longer_than_80_chars

import 'package:flutter/material.dart';
import 'package:foodieapp/homeScreen/view/screens/read_eg.dart';
import 'package:foodieapp/homeScreen/view/screens/write_eg.dart';

class DummyHome extends StatelessWidget {
  const DummyHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: Center(
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => const ReadExamples(),));
              }, child: const Text('read '),),
               ElevatedButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const WriteExamples(),));
              }, child: const Text('write'),),
            ],
          ),
        ),
      ),
    );
  }
}
