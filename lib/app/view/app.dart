import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:foodieapp/l10n/l10n.dart';
import 'package:foodieapp/login/bloc/login_bloc.dart';
import 'package:foodieapp/login/view/screens/screenLogin.dart';
import 'package:foodieapp/signUp/bloc/sign_up_bloc.dart';
import 'package:sizer/sizer.dart';



// class App extends StatelessWidget {
//   const App({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       theme: ThemeData(
//         appBarTheme: const AppBarTheme(color: Color(0xFF13B9FF)),
//         colorScheme: ColorScheme.fromSwatch(
//           accentColor: const Color(0xFF13B9FF),
//         ),
//       ),
//       localizationsDelegates: AppLocalizations.localizationsDelegates,
//       supportedLocales: AppLocalizations.supportedLocales,
//       home: const CounterPage(),
//     );
//   }
// }
class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return 
    // BlocProvider(
      // create: (context) => LoginBloc(),
      MultiBlocProvider(providers: [
        BlocProvider<LoginBloc>(create:(context) => LoginBloc(), ),
        BlocProvider<SignUpBloc>(create:(context) => SignUpBloc(), ),
      ], 
      child: Sizer(
        builder: (BuildContext context, Orientation orientation,
            DeviceType deviceType) {
          return MaterialApp(
            title: 'Flutter Demo',
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
              primarySwatch: Colors.blue,
            ),
             localizationsDelegates: AppLocalizations.localizationsDelegates,
              supportedLocales: AppLocalizations.supportedLocales,
            home: ScreenLogin(),
          );
        },
      ),
    );
    
  }
}
