import 'package:components_flutter/theme/app_theme.dart';
import 'package:flutter/material.dart';

class CustomCardType1 extends StatelessWidget {
  const CustomCardType1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          const ListTile(
            leading: Icon(Icons.photo_album, color: AppTheme.primary),
            title: Text('Titulo de la tarjeta'),
            subtitle: Text(
              'Este es el subtitulo de la tarjeta, que es un texto mas largo, para ver como se ve en la pantalla. Ademas, se puede agregar mas texto.',
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () {
                    print('Cancelar');
                  },
                  child: const Text('Cancelar'), // Corrected 'cosnt' to 'const'
                ),
                TextButton(
                  onPressed: () {
                    print('Ok');
                  },
                  child: const Text('Ok'),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
