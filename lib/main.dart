import 'package:flutter/material.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:linkfive_flutter_web/src/router/main_router.dart';
import 'package:linkfive_flutter_web/src/theme/light_theme.dart';

void main() {
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

