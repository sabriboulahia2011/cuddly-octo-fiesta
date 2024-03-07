import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_clone/webPages/home_page.dart';
import 'package:whatsapp_clone/webPages/login_signup_page.dart';
import 'package:whatsapp_clone/webPages/messages_pages.dart';

class RoutesForWebPages {
  static Route<dynamic> createRoutes(RouteSettings settingsRoute) {


    switch (settingsRoute.name) {
      case "/":
        return MaterialPageRoute
          (
            builder: (c) => const LoginSignUpPage()
        );
      case "/login":
        return MaterialPageRoute
          (
            builder: (c) => const LoginSignUpPage()
        );
      case "/home":
        return MaterialPageRoute
          (
            builder: (c) => const HomePage()
        );
      case "/messages":
        return MaterialPageRoute
          (
            builder: (c) => const MessagesPage()
        );
    }
    return errorPageRoute();
  }

  static Route<dynamic> errorPageRoute() {
    return MaterialPageRoute(builder: (c)
    {
      return Scaffold(
        appBar: AppBar(
          title: const Text(
              "Web Page not found"
          ),
        ),
        body:const Center(
          child:  Text(
              "Web Page not found"
          ),
        ) ,
      );
    }
    );
  }
}