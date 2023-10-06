import 'package:components_flutter/theme/app_theme.dart';
import 'package:flutter/material.dart';

class CustomCardType2 extends StatelessWidget {
  const CustomCardType2({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
        clipBehavior: Clip.antiAlias,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
        shadowColor: AppTheme.primary.withOpacity(0.5),
        elevation: 10,
        child: Column(
          children: [
            const FadeInImage(
              placeholder: AssetImage('assets/jar-loading.gif'),
              image: NetworkImage(
                  'https://www.muycomputer.com/wp-content/uploads/2021/06/BigSur.jpg'),
              width: double.infinity,
              height: 230,
              fit: BoxFit.cover,
              fadeInDuration: Duration(milliseconds: 300),
            ),
            Container(
              alignment: AlignmentDirectional.centerEnd,
              padding: const EdgeInsets.all(10),
              child: const Text('No tengo idea de que poner'),
            )
          ],
        ));
  }
}
