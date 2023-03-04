import 'package:flutter/material.dart';
import 'package:my_app/router/app_routes.dart';
import 'package:my_app/screens/listview1_screen.dart';

import '../theme/app_theme.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          // backgroundColor: Colors.deepOrange[600],
          title: const Text('Componentes Flutter'),
          elevation: 0,
        ),
        body: ListView.separated(
            itemBuilder: (context, index) => ListTile(
                  leading: Icon(
                    AppRoutes.menuOptions[index].icon,
                    color: AppTheme.primary,
                  ),
                  title: Text(AppRoutes.menuOptions[index].name),
                  onTap: () {
                    //Metodo 1 para navegar a otra screen
                    // final route = MaterialPageRoute(
                    //     builder: (context) => const Listview1Screen());
                    // Navigator.push(context, route);
                    //Metodo 2 para navegar a otra screen
                    Navigator.pushNamed(
                        context, AppRoutes.menuOptions[index].route);
                  },
                ),
            separatorBuilder: (_, __) => const Divider(),
            itemCount: AppRoutes.menuOptions.length));
  }
}
