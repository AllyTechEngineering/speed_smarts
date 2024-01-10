import 'dart:async';
// import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
// import 'package:path_provider/path_provider.dart';
import 'package:flutter_pdfview/flutter_pdfview.dart';
import 'package:speed_smarts/screens/definition_screen.dart';
import 'package:speed_smarts/screens/home_screen.dart';
import 'package:speed_smarts/screens/pdf_screen.dart';
import 'package:speed_smarts/screens/results_screen.dart';
import 'package:speed_smarts/screens/settings_screen.dart';
import 'package:speed_smarts/utilities/app_theme_data_class.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

final GoRouter _router = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return const HomeScreen();
      },
      routes: <RouteBase>[
        GoRoute(
          path: 'definition_screen',
          builder: (BuildContext context, GoRouterState state) {
            return const DefinitionScreen();
          },
        ),
        GoRoute(
          path: 'results_screen',
          builder: (BuildContext context, GoRouterState state) {
            return const ResultsScreen();
          },
        ),
        GoRoute(
          path: 'pdf_screen',
          builder: (BuildContext context, GoRouterState state) {
            return const PdfScreen();
          },
        ),
        GoRoute(
          path: 'settings_screen',
          builder: (BuildContext context, GoRouterState state) {
            return const SettingsScreen();
          },
        ),
      ],
    ),
  ],
);

// class MyApp extends StatefulWidget {
//   @override
//   _MyAppState createState() => _MyAppState();
// }
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    // return RepositoryProvider(
    //   create: (context) => RulesDataRepository(),
    //   child: MultiBlocProvider(
    //     providers: [
    //       BlocProvider<SelectionCubit>(
    //         create: (context) => SelectionCubit(),
    //       ),
    //       BlocProvider<RulesDataCubit>(
    //         create: (context) => RulesDataCubit(
    //           rulesDataRepository: RulesDataRepository(),
    //           selectionCubit: context.read<SelectionCubit>(),
    //         ),
    //       ),
    //     ],
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: _router,
      theme: AppThemeDataClass().getAppTheme(context),
    );
  }
}
