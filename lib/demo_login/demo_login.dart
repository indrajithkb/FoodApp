// ignore_for_file: lines_longer_than_80_chars
// import 'package:flutter/material.dart';
// import 'package:flutter/src/widgets/framework.dart';
// import 'package:flutter/src/widgets/placeholder.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:foodieapp/demo_home/bloc/demo_api_home_bloc.dart';
// import 'package:foodieapp/demo_login/bloc/demo_api_login_bloc.dart';

// import 'package:foodieapp/demo_login/demo_login_repo.dart';

// class DemoLogin extends StatelessWidget {
//   DemoLogin({super.key});
//   TextEditingController demoEmailController = TextEditingController();

//   TextEditingController demoPasswdController = TextEditingController();
//   @override
//   Widget build(BuildContext context) {
//     return BlocProvider(
//       create: (context) => DemoApiLoginBloc(
//           demoApiLoginRepo: RepositoryProvider.of<DemoApiLoginRepo>(context)),
//       child: Scaffold(
//           appBar: AppBar(),
//           body: Padding(
//             padding: const EdgeInsets.all(15.0),
//             child: BlocConsumer<DemoApiLoginBloc, DemoApiLoginState>(
//               listener: (context, state) {
//               
//               },
//               builder: (context, state) {
                
//                 if (state is DemoApiLoginLoading) {
//                   return Center(
//                     child: CircularProgressIndicator(),
//                   );
//                 } 
//                 else if (state is DemoApiLoginError) {
//                   return Center(
//                     child: Text("error"),
//                   );
//                 } 
//                 else {
//                   return Column(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     crossAxisAlignment: CrossAxisAlignment.center,
//                     children: [
//                       TextFormField(
                        
//                         controller: demoEmailController,
//                         decoration: InputDecoration(hintText: 'email'),
//                       ),
//                       SizedBox(
//                         height: 20,
//                       ),
//                       TextFormField(
                        
//                            obscureText: state.onActive,
//                         controller: demoPasswdController,
//                         decoration: InputDecoration(
//                           hintText: 'password',
//                           suffixIcon: InkWell(
//                             onTap: () {
//                                 context.read<DemoApiLoginBloc>().add(ViewPassword());
//                             },
//                             child: Icon(Icons.lock))
                          
//                           ),
//                       ),
//                       SizedBox(
//                         height: 20,
//                       ),
//                       ElevatedButton(
//                           onPressed: () {
//                             LoginButton(context);

//                             // DemoApiLoginRepo().demoLogin(
//                             //   email: demoEmailController.text.toString(),
//                             //   password: demoPasswdController.text.toString(),
//                             // );
//                             // context.read<DemoApiSignUpBloc>().add(PostData(demoUsernameController.text.toString(),
//                             //  demoEmailController.text.toString(),
//                             //   demoPasswdController.text.toString()
//                             //  ));
//                             // context.read<DemoApiLoginBloc>().add(LoginData(
//                             //       demoEmailController.text.toString(),
//                             //       demoPasswdController.text.toString(),

//                             //     ));
//                             //  Navigator.push(context,MaterialPageRoute(builder: (context) => DemoHome(),));
//                           },
//                           child: Text('signIN'))
//                     ],
//                   );
//                 }
//               },
//             ),
//           )),
//     );
//   }

//   void LoginButton(BuildContext context) {
//     context.read<DemoApiLoginBloc>().add(LoginData(
//         demoEmailController.text.toString(),
//         demoPasswdController.text.toString(),
//         context));

//     // context.read<DemoApiHomeBloc>().add(FetchHomeData());
//   }
// }
