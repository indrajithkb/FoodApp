import 'dart:async';

import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';

import 'package:fluttertoast/fluttertoast.dart';
import 'package:foodieapp/streams/add_post.dart';

class ScreenPost extends StatefulWidget {
  const ScreenPost({super.key});

  @override
  State<ScreenPost> createState() => _ScreenStreamState();
}

class _ScreenStreamState extends State<ScreenPost> {
  final ref = FirebaseDatabase.instance.ref('post1');
//  final ref=FirebaseDatabase.instance.ref("post");
  final editcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Expanded(
              child: StreamBuilder(
            stream: ref.onValue,
            builder: (context, AsyncSnapshot<DatabaseEvent> snapshot) {
// Map<dynamic,dynamic>map=snapshot.data!.snapshot.value as Map<dynamic,dynamic>;
              final map =
                  snapshot.data!.snapshot.value as Map<dynamic, dynamic>;
              // print(snapshot.data!.snapshot.value);
              List<dynamic> list = [];
              list.clear();

              list = map.values.toList();
              // print(list);
              if (!snapshot.hasData) {
                print("no data");
                return CircularProgressIndicator();
              } else {
                return ListView.builder(
                  itemCount: snapshot.data!.snapshot.children.length,
                  itemBuilder: (context, index) {
                    final title = list[index]["title"].toString();
                    final id = list[index]["id"].toString();
                    return ListTile(
                      title: Text(list[index]["title"].toString()),
                      subtitle: Text(list[index]["id"].toString()),
                      trailing: PopupMenuButton(
                        icon: Icon(Icons.more_vert),
                        itemBuilder: (context) => [
                          PopupMenuItem(
                              value: 1,
                              child: ListTile(
                                onTap: () {
                                  Navigator.pop(context);
                                  showMyDialog(title, id);
                                },
                                leading: Icon(Icons.edit),
                                title: Text("Edit"),
                              )),
                          PopupMenuItem(
                              value: 2,
                              child: ListTile(
                                leading: Icon(Icons.delete),
                                title: InkWell(
                                    onTap: () {
                                      ref.child(id).remove();
                                    },
                                    child: Text("del")),
                              )),
                        ],
                      ),
                    );
                  },
                );
              }
            },
          ))
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => AddPostScreen(),
              ));
        },
        child: Icon(Icons.add),
      ),
    );
  }

  Future<void> showMyDialog(String title, String id) async {
    editcontroller.text = title;
    return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text("update"),
          content: Container(
            child: TextField(
              controller: editcontroller,
              decoration: InputDecoration(hintText: "edit text"),
            ),
          ),
          actions: [
            TextButton(
                onPressed: () {
                  Navigator.pop(context);
                  ref.child(id).update(
                      {"title": editcontroller.text.toString()}).then((value) {
                    Fluttertoast.showToast(msg: "post updated");
                  }).onError((error, stackTrace) {
                    Fluttertoast.showToast(msg: error.toString());
                  });
                },
                child: Text("update")),
            TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text("cancel")),
          ],
        );
      },
    );
  }
}
