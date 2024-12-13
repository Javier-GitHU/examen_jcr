import 'package:flutter/material.dart';
import 'package:examen_jcr/Screens/List_view_Screen_JCR.dart';

class Home_Screen_JCR extends StatelessWidget {
  const Home_Screen_JCR({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Column(
      children: [
        const FlutterLogo(size: 100),
         ElevatedButton(
          onPressed: () {
            final route = MaterialPageRoute(builder: (context) => const ListViewScreen_JCR());
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
