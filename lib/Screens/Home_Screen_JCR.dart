import 'package:flutter/material.dart';
import 'package:examen_jcr/routes/app_routes_JCR.dart';
class Home_Screen_JCR extends StatelessWidget {
  const Home_Screen_JCR({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Column(
      children: [
        const SizedBox(height: 100,),
        const FlutterLogo(size: 100),
         ElevatedButton(
          onPressed: () {
            Navigator.pushNamed(context, AppRoutes.MenuOptions[1].route);
          },
          child: const SizedBox(
          width: double.infinity,
          child: Center(child: Text('Sign in')))),
          ElevatedButton(
          onPressed: () {}, 
          child: const SizedBox(
          width: double.infinity,
          child: Center(child: Text('Sign ip')))),
      ],)
    );
  }
}
