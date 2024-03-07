import 'package:flutter/material.dart';
import 'package:whatsapp_clone/defaultColors/default_colors.dart';
import 'package:whatsapp_clone/routes_web_pages.dart';

String firstRoute = "/";

void main() {
  runApp(const MyApp());
}


final ThemeData defaultThemeOfWebApp = ThemeData(
  colorScheme: ColorScheme.fromSeed(seedColor: DefaultColors.primaryColor)
);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter WhatsApp web & desktop app Clone',
      theme: defaultThemeOfWebApp,
       debugShowCheckedModeBanner: false,
       initialRoute: firstRoute,
       onGenerateRoute: RoutesForWebPages.createRoutes,
    );
  }
}

