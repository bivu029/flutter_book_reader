import 'package:bookbazar/src/core/routes/routes.dart';


import 'src/core/config/config.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  //  Here we are calling the Dependency Injection
  await DependencyInjection.init();
  //  This is the main app
  runApp(const RootApp());
}

class RootApp extends StatelessWidget {
  const RootApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: AppRoute.routes,
      theme: ThemeData(fontFamily: 'Josefin_Sans'),
      
    );
  }
}
