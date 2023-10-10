import 'package:components_flutter/router/app_routes.dart';
import 'package:components_flutter/theme/app_theme.dart';
import 'package:flutter/material.dart';

//import 'package:components_flutter/screens/screens.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final menuOptions = AppRoutes.menuOptions;

    return Scaffold(
        appBar: AppBar(
          title: const Text('HomeScreen'),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: ListView.separated(
              itemBuilder: (context, index) => ListTile(
                    title: Text(menuOptions[index].name),
                    leading:
                        Icon(menuOptions[index].icon, color: AppTheme.primary),
                    trailing: const Icon(Icons.arrow_forward_ios,
                        color: AppTheme.primary),
                    onTap: () {
                      // final route = MaterialPageRoute(
                      //     builder: (context) => const ListView1Screen());

                      Navigator.pushNamed(context, menuOptions[index].route);
                    },
                  ),
              separatorBuilder: (_, __) => const Divider(),
              itemCount: menuOptions.length),
        ));
  }
}
