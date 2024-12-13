import 'package:flutter/material.dart';

class ReservasScreenJcr extends StatelessWidget {
   
  const ReservasScreenJcr({Key? key}) : super(key: key);
  
  void displayDialog(BuildContext context){
    showDialog(
      barrierDismissible: false,//Es para que cuando pulses fuera de la ventana emrgente no se salga
    context: context,
    builder: ( context ) {
      return  AlertDialog(
        title: const Text("Aviso"),
        shape: RoundedRectangleBorder(borderRadius: BorderRadiusDirectional.circular(5)), //Le dara bordes redondeados
        content:
        const Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text("El sistema de reservas esta deshabilitado en estos momentos"),
            SizedBox(height: 10,),
            FlutterLogo(size: 100,)
          ],
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context), 
            child: Text("Cancelar")
            )
        ],
      );
    }
    );
  }
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
    );
  }
}