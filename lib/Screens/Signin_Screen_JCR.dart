import 'package:flutter/material.dart';
import 'package:examen_jcr/routes/app_routes_JCR.dart';
import 'package:examen_jcr/widgets/custom_text_form_field.dart';
class SigninScreenJcr extends StatelessWidget {
   
  const SigninScreenJcr({super.key});
  
  @override
  Widget build(BuildContext context) {
    final myFormKey = GlobalKey<FormState>();
    final Map<String, String> formValues = {
      'Usuario': 'Andres',
      'password': '123456',
    };
return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Form(
          key: myFormKey,
          child: Column(
            children: [
              const FlutterLogo(size: 100),
              CustomTextFormField(
                hintText: 'Usuario',
                labelText: 'Usuario',
                helperText: 'Solo letras',
                suffixIcon: Icons.person_2_rounded,
                obscureText: false,
                formProperty: 'Usuario',
                formValues: formValues,
              ),
              const SizedBox(
                height: 30,
              ),
              CustomTextFormField(
                hintText: 'Contraseña',
                labelText: 'Contraseña del usuario',
                icon: Icons.password_rounded,
                obscureText: true,
                formProperty: 'Contraseña',
                formValues: formValues,
              ),
              const SizedBox(height: 30),
              ElevatedButton(
                  onPressed: () {
                    FocusScope.of(context).requestFocus(
                        FocusNode()); 
                    if (!myFormKey.currentState!.validate()) {
                      print('Formulario no valido');
                      return;
                    }else{
                      Navigator.pushNamed(context, AppRoutes.MenuOptions[2].route);
                    }
                  },
                  child: const SizedBox(
                      width: double.infinity,
                      child: Center(child: Text('Sign in'))))
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.close),
        onPressed: () => Navigator.pop(context)
      ),
    );
  }
}