import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:foodieapp/ApiDemo/bloc/api_demo_bloc.dart';
// import 'package:foodieapp/ApiDemo/screen_ui.dart';
import 'package:foodieapp/homeScreen/bloc/demo_user_bloc.dart';
import 'package:foodieapp/homeScreen/bloc/home_screen_bloc.dart';
import 'package:foodieapp/homeScreen/repo/repository.dart';
import 'package:foodieapp/l10n/l10n.dart';
import 'package:foodieapp/login/bloc/login_bloc.dart';
import 'package:foodieapp/login/view/screens/screenLogin.dart';
import 'package:foodieapp/signUp/bloc/sign_up_bloc.dart';
import 'package:sizer/sizer.dart';

// class App extends StatelessWidget {
//   const App({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return BlocProvider(
//       create: (context) => ApiDemoBloc(),
//       child: MaterialApp(
//         theme: ThemeData(
//           appBarTheme: const AppBarTheme(color: Color(0xFF13B9FF)),
//           colorScheme: ColorScheme.fromSwatch(
//             accentColor: const Color(0xFF13B9FF),
//           ),
//         ),
//         localizationsDelegates: AppLocalizations.localizationsDelegates,
//         supportedLocales: AppLocalizations.supportedLocales,
//         home: ScreenUi(),
//       ),
//     );
//   }
// }

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
//       home: RepositoryProvider(
//         create: (context) => DemoRepository(),
//         child: BlocProvider(
//           create: (context) => DemoUserBloc(
//             RepositoryProvider.of<DemoRepository>(context)
//           )..add(LoadDemoUser()),
//           child: DemoScreen(),
//         ),
//       ),
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
        RepositoryProvider(
      create: (context) => DemoRepository(),
      child: MultiBlocProvider(
        providers: [
          BlocProvider<LoginBloc>(
            create: (context) => LoginBloc(),
          ),
          BlocProvider<SignUpBloc>(
            create: (context) => SignUpBloc(),
          ),
          BlocProvider<HomeScreenBloc>(
            create: (context) => HomeScreenBloc(),
          ),
          BlocProvider(create: (context) => DemoUserBloc(
            RepositoryProvider.of<DemoRepository>(context),
          )..add(LoadDemoUser()),)
        ],
        child: Sizer(
          builder: (
            BuildContext context,
            Orientation orientation,
            DeviceType deviceType,
          ) {
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
      ),
    );
  }
}


// class App extends StatelessWidget {
//   const App({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Sizer(builder: (context, orientation, deviceType) {
//       return MaterialApp(
//       theme: ThemeData(
//         appBarTheme: const AppBarTheme(color: Color(0xFF13B9FF)),
//         colorScheme: ColorScheme.fromSwatch(
//           accentColor: const Color(0xFF13B9FF),
//         ),
//       ),
//       localizationsDelegates: AppLocalizations.localizationsDelegates,
//       supportedLocales: AppLocalizations.supportedLocales,
//       home: FoodScreen()
//       // DummyHome()
//       // ScreenPost(),
//     );
//     },);
//   }
// }
