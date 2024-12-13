import 'package:examen_jcr/models/menu_option_JCR.dart';
import 'package:flutter/material.dart';
import 'package:examen_jcr/Screens/Pistas_Screen_JCR.dart';
import 'package:examen_jcr/Screens/Reservas_Screen_JCR.dart';
import 'package:examen_jcr/Screens/Home_Screen_JCR.dart';
import 'package:examen_jcr/Screens/Monitores_Screen_JCR.dart';
import 'package:examen_jcr/Screens/List_view_Screen_JCR.dart';
class AppRoutes {
  static const initialRoute = 'Home';
  static final MenuOptions = <MenuOption>[
    MenuOption(
      route: 'Home', 
      icon: Icons.house_rounded, 
      name: 'Home Screen', 
      screen: const Home_Screen_JCR()),
      MenuOption(
      route: 'List', 
      icon: Icons.house_rounded, 
      name: 'ListView', 
      screen: const ListViewScreen_JCR()),
    MenuOption(
      route: 'Pista', 
      icon: Icons.list_alt, 
      name: 'Pistas', 
      screen: const PistasScreenJcr()),
    MenuOption(
      route: 'Monitores', 
      icon: Icons.card_membership, 
      name: 'Monitores', 
      screen: const MonitoresScreenJcr()),
      MenuOption(
      route: 'Reservas', 
      icon: Icons.person_2_outlined, 
      name: 'Reservas', 
      screen: const ReservasScreenJcr()),
  ];
  
  static Map<String, Widget Function(BuildContext)> getAppRoutes(){
    Map<String, Widget Function(BuildContext)> AppRoutes = {};

    for ( final option in MenuOptions){
      AppRoutes.addAll({option.route : ( BuildContext context) => option.screen});
    }
    return AppRoutes;
  }
}