import 'package:components_flutter/theme/app_theme.dart';
import 'package:flutter/material.dart';

class ListView2Screen extends StatelessWidget {
  final options = const ['Map', 'Album', 'Phone'];

  const ListView2Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('ListView Tipo 2'),
        ),
        body: ListView.separated(
            itemCount: options.length,
            itemBuilder: (context, index) => ListTile(
                  title: Text(options[index]),
                  trailing: const Icon(
                    Icons.arrow_forward_ios_outlined,
                    color: AppTheme.primary,
                  ),
                  onTap: () {
                    final snackBar = SnackBar(
                        content: Text('You selected ${options[index]}'));
                    ScaffoldMessenger.of(context).showSnackBar(snackBar);
                  },
                ),
            separatorBuilder: (_, __) => const Divider()));
  }
}
