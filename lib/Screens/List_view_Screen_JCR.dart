import 'package:flutter/material.dart';
import 'package:examen_jcr/routes/app_routes_JCR.dart';

class ListViewScreen_JCR extends StatelessWidget {
  const ListViewScreen_JCR({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Flutter App"),
          actions: const [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://as01.epimg.net/meristation/imagenes/2013/09/17/noticia/1379397600_125748_1532601596_portada_normal.jpg'),
              ),
            ),
          ],
        ),
        body: ListView.separated(
            itemBuilder: (context, index) => ListTile(
                leading: Icon(AppRoutes.MenuOptions[index].icon),
                title: Text(AppRoutes.MenuOptions[index].name),
                onTap: () {
                  Navigator.pushNamed(
                      context, AppRoutes.MenuOptions[index].route);
                }
                ),
            separatorBuilder: (context, index) => const Divider(),
            itemCount: AppRoutes.MenuOptions.length)
            );
  }
}
