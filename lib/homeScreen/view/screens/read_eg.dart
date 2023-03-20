import 'dart:async';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:foodieapp/homeScreen/view/screens/dailySpecial.dart';

class ReadExamples extends StatefulWidget {
  const ReadExamples({super.key});

  @override
  State<ReadExamples> createState() => _WriteExamplesState();
}

class _WriteExamplesState extends State<ReadExamples> {
  String _displayText = 'Results go here';
  final _database = FirebaseDatabase.instance.ref();
  late StreamSubscription _dailySpecialStream;
  List<FoodSpecial>foodSpecialList=[];

  @override
  void initState() {
    _activateListeners();
    super.initState();
  }

  @override
  void deactivate() {
    _dailySpecialStream.cancel();
    super.deactivate();
  }

  void _activateListeners() {
    _dailySpecialStream =
        _database.child('foodSpecial').onValue.listen((event) {
    final data = event.snapshot.value as List<Object?>;
      final dailyFoodSpecial = data.map((e) {
        return FoodSpecial.fromRTDB(e);
      }).toList();

      // print(dailyFoodSpecial[0].image);

      setState(() {
        foodSpecialList=dailyFoodSpecial;
        //  _displayText = dailyFoodSpecial.fancyDescription();
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('read details'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Column(
            children: [
              // Text(_displayText),
              Container(
                  color: Colors.grey,
                  height: 600,
                  width: double.infinity,
                  child: ListView.builder(
                    // scrollDirection: Axis.horizontal,
                    itemCount: foodSpecialList.length,
                    itemBuilder: (context, index) {
                      debugPrint(foodSpecialList[index].image);
                      return ListTile(
                        leading: CircleAvatar(
                          radius: 30,
                          child: Image.network(foodSpecialList[index].image,
                          fit: BoxFit.fill,),
                        ),
                        title: Text(foodSpecialList[index].foodname),
                        subtitle: Text(foodSpecialList[index].id.toString()),
                      );

                  },),
                  )
            ],
          ),
        ),
      ),
    );
  }
}
