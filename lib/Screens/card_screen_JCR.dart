import 'package:flutter/material.dart';
import 'package:examen_jcr/widgets/pistas_card_JCR.dart';
class CardScreen extends StatelessWidget {
   
  const CardScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text('Card Widget'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        children: const [
          SizedBox(height: 10,),
        PistasCardJcr(imageURL: 'https://allforpadel.com/img/cms/pistas/fx2-1.jpg',nombre:'Pista de padel', descripcion: 'Laborum ea minim anim laboris deserunt incididunt duis dolore amet ad aliqua officia reprehenderit veniam.,'),
          SizedBox(height: 10,),
        PistasCardJcr(imageURL: 'https://barbastro.org/images/areas/deportes/Piscina_climatizada_Large.jpg',nombre:'Piscina cubierta', descripcion: 'Consectetur anim elit sunt nisi dolore consectetur voluptate nostrud aliquip eu do ad reprehenderit do.',),
          SizedBox(height: 10,),
         PistasCardJcr(imageURL: 'https://grupopineda.eu/wp-content/uploads/2020/04/shutterstock_1832966869.jpg',nombre:'Campo de baloncesto', descripcion: 'Ex ea aute duis esse incididunt laborum.',),
          SizedBox(height: 10,),
        ],
      )
    );
  }
}
