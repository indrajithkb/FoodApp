import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class AddPostScreen extends StatefulWidget {
  const AddPostScreen({super.key});

  @override
  State<AddPostScreen> createState() => _AddPostScreenState();
}

class _AddPostScreenState extends State<AddPostScreen> {
  final databaseRef = FirebaseDatabase.instance.ref('post1');
  bool loading = false;
  final postController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          const SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.all(15),
            child: TextFormField(
              controller: postController,
              maxLines: 5,
              decoration: const InputDecoration(
                  hintText: 'whats in your mind', 
                  border: OutlineInputBorder(),),
            ),
          ),
          ElevatedButton(
              onPressed: () async {
                
 loading = loading;
                setState(() {
                 loading = true;
               
                });
                await Future.delayed(Duration(seconds: 1));
                String id=DateTime.now().millisecondsSinceEpoch.toString();
              

                await databaseRef.child(id).set({
                  'id': id,
                  'title': postController.text.toString()
                }).then((value) {
                  Fluttertoast.showToast(msg: 'post added');
                    setState(() {
                  loading = false;
                    postController.clear();
                });
                }).onError((error, stackTrace) {
                  Fluttertoast.showToast(msg: error.toString());
                 setState(() {
                  loading = true;

                });
                });
              },
              child: loading ? const CircularProgressIndicator() :
               const Text('add post'),)
        ],
      ),
    );
  }
}
