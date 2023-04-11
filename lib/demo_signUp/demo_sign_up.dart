// // ignore_for_file: noop_primitive_operations, avoid_print

// import 'dart:convert';

// import 'package:flutter/material.dart';
// import 'package:flutter/src/widgets/framework.dart';
// import 'package:flutter/src/widgets/placeholder.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:fluttertoast/fluttertoast.dart';
// import 'package:foodieapp/demo_signUp/bloc/demo_api_sign_up_bloc.dart';
// import 'package:foodieapp/demo_signUp/demo_repo.dart';
// import 'package:foodieapp/utils/api_constants.dart';
// import 'package:get/get.dart';
// import 'package:http/http.dart';

// class DemoSignUp extends StatefulWidget {
//   DemoSignUp({super.key});

//   @override
//   State<DemoSignUp> createState() => _DemoSignUpState();
// }

// class _DemoSignUpState extends State<DemoSignUp> {
//   TextEditingController demoEmailController = TextEditingController();

//   TextEditingController demoPasswdController = TextEditingController();

//   TextEditingController demoUsernameController = TextEditingController();

//   @override
//   Widget build(BuildContext context) {
//     return BlocProvider(
//       create: (context) => DemoApiSignUpBloc(
//           demoApiRepo: RepositoryProvider.of<DemoApiRepo>(context)),
//       child: Scaffold(
//         appBar: AppBar(),
//         body: Padding(
//           padding: const EdgeInsets.all(8.0),
//           child: BlocConsumer<DemoApiSignUpBloc, DemoApiSignUpState>(
//             listener: (context, state) {
//               // if(state is DemoApiLoaded){
//               //  ScaffoldMessenger.of(context).
//               //  showSnackBar(SnackBar(
//               //   content: Text("user added"),
//               //   duration: Duration(seconds: 1),));
//               // }
//              
//             },
//             builder: (context, state) {
//               if (state is DemoApiLoading) {
//                 return Center(
//                   child: CircularProgressIndicator(),
//                 );
//               } else if (state is DemoApiError) {
//                 return Center(
//                   child: Text("error"),
//                 );
//               } else {
//                 //DemoApiLoaded state
//                 return Column(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   crossAxisAlignment: CrossAxisAlignment.center,
//                   children: [
//                     TextFormField(
//                       controller: demoUsernameController,
//                       decoration: InputDecoration(hintText: 'username'),
//                     ),
//                     SizedBox(
//                       height: 20,
//                     ),
//                     TextFormField(
//                       controller: demoEmailController,
//                       decoration: InputDecoration(hintText: 'email'),
//                     ),
//                     SizedBox(
//                       height: 20,
//                     ),
//                     TextFormField(
//                       controller: demoPasswdController,
//                       decoration: InputDecoration(hintText: 'password'),
//                     ),
//                     SizedBox(
//                       height: 20,
//                     ),
//                     ElevatedButton(
//                         onPressed: () async {
//                           // DemoApiRepo().demoSignUp(
//                           //     email: demoEmailController.text.toString(),
//                           //     password: demoPasswdController.text.toString(),
//                           //     username: demoUsernameController.text.toString());
//                           context.read<DemoApiSignUpBloc>().add(PostData(
//                               demoUsernameController.text.toString(),
//                               demoEmailController.text.toString(),
//                               demoPasswdController.text.toString()));
//                         },
//                         child: Text('signUp'))
//                   ],
//                 );
//               }
//             },
//           ),
//         ),
//       ),
//     );
//   }
// }
