import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodieapp/statemanagement/bloc/demo_user_bloc.dart';
import 'package:foodieapp/statemanagement/model/demo_model.dart';
import 'package:foodieapp/statemanagement/repo/repo.dart';

class DemoScreen extends StatelessWidget {
  const DemoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
     
      body: BlocBuilder<DemoUserBloc, DemoUserState>(
        builder: (context, state) {
          if(state is DemoUserLoading){
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(child: CircularProgressIndicator(),),
                ElevatedButton(onPressed: (){
context.read<DemoUserBloc>().add(LoadedUser());
                }, child: Text("load data"))
              ],
            );
          }
          if(state is DemoUserLoaded){
         DemoModel userr=state.user;
         
            return
            // Center(child: Text(userr.nq8C9ItMdKp94BJ8Gkg),);
            ListView.builder(
              itemCount: userr.demosub.length,
              itemBuilder: (context, index) {
              return ListTile(
                title: Text(userr.demosub[index].foodname),
                // subtitle: Text(userr.data[index].id.toString()),
              );
            },);
          }
          return Center();
        },
      ),
    );
  }
}
