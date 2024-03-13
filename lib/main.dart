import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:linkfive_flutter_web/firebase_options.dart';
import 'package:linkfive_flutter_web/src/provider/token_provider.dart';
import 'package:linkfive_flutter_web/src/router/main_router.dart';
import 'package:linkfive_flutter_web/src/theme/light_theme.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  await Future.delayed(Duration(seconds: 2));
  await setAccessTokenWhenTesting();

  runApp( const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      theme: lightTheme,
      routeInformationProvider: mainRouter.routeInformationProvider,
      routeInformationParser: mainRouter.routeInformationParser,
      routerDelegate: mainRouter.routerDelegate,
    );
  }
}

