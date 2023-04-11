// import 'package:flutter/material.dart';
// import 'package:flutter/src/widgets/framework.dart';
// import 'package:flutter/src/widgets/placeholder.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:foodieapp/demo_home/bloc/demo_api_home_bloc.dart';
// import 'package:foodieapp/demo_home/demo_model_home.dart';
// import 'package:foodieapp/utils/sharedpref.dart';

// class DemoHomeUI extends StatefulWidget {
//   const DemoHomeUI({super.key});

//   @override
//   State<DemoHomeUI> createState() => _DemoHomeUIState();
// }

// class _DemoHomeUIState extends State<DemoHomeUI> {
//   @override
//   void initState() {
//     context.read<DemoApiHomeBloc>().add(FetchHomeData());
//     super.initState();
//   }
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(

//         actions: [
//           IconButton(onPressed: (){
// clearToken(context: context);
// debugPrint("clearedToken");
//           }, icon: Icon(Icons.close))
//         ],
//       ),
//       body: BlocBuilder<DemoApiHomeBloc, DemoApiHomeState>(
//         builder: (context, state) {
//              if(state is DemoApiHomeLoading){
//           return const Center(
//             child: CircularProgressIndicator(),
//           );
//         }else if (state is DemoApiHomeLoaded){
//               //  final res=state.result?.data ;
//               // final res=state.result?.data;
//               final HomeApiModel userRes=state.result;
//           return ListView.builder(
//             itemCount: userRes.data.nrWifmDJwiwH8WwvlhV.banners.length,
//             itemBuilder: (context, index) {
//               final userData=userRes.data.nrWifmDJwiwH8WwvlhV.banners;
//             return ListTile(
//               title:Text( userData[index].id.toString()),
//             );
//           },);
//         }
//           return Center(
//             child: Text("No data available"),
//           );
//         },
//       ),
//     );
//   }
// }
