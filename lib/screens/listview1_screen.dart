import 'package:components_flutter/theme/app_theme.dart';
import 'package:flutter/material.dart';

class ListView1Screen extends StatelessWidget {
  final options = const ['Map', 'Album', 'Phone'];

  const ListView1Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('ListView1Screen')),
      body: ListView(
        children: [
          ...options
              .map(
                (e) => ListTile(
                  title: Text(e),
                  trailing: const Icon(
                    Icons.arrow_forward_ios_outlined,
                    color: AppTheme.primary,
                  ),
                ),
              )
              .toList(),
        ],
      ),
    );
  }
}
