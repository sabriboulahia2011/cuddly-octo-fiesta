import 'package:flutter/material.dart';
import 'package:whatsapp_clone/defaultColors/default_colors.dart';
import 'package:whatsapp_clone/routes_web_pages.dart';
import 'package:firebase_core/firebase_core.dart';

String firstRoute = "/";

void main() async {
  await Firebase.initializeApp(
      options: const FirebaseOptions(
          apiKey: "AIzaSyAnnOWj7HICWmgRes7UdP7R143Y14rJLQE",
          authDomain: "whatsapp-web-and-desktop-clone.firebaseapp.com",
          projectId: "whatsapp-web-and-desktop-clone",
          storageBucket: "whatsapp-web-and-desktop-clone.appspot.com",
          messagingSenderId: "169158186444",
          appId: "1:169158186444:web:aebbc941115f8f463cb969",
          measurementId: "G-5GMZGEK285"));

  runApp(const MyApp());
}

final ThemeData defaultThemeOfWebApp = ThemeData(
    colorScheme: ColorScheme.fromSeed(seedColor: DefaultColors.primaryColor));

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
