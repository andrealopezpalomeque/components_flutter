import 'package:components_flutter/theme/app_theme.dart';
import 'package:flutter/material.dart';

class CustomCardType2 extends StatelessWidget {
//propiedades
  final String imageUrl;
  final String? name;

  const CustomCardType2({Key? key, required this.imageUrl, this.name})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
        clipBehavior: Clip.antiAlias,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
        shadowColor: AppTheme.primary.withOpacity(0.5),
        elevation: 10,
        child: Column(
          children: [
            FadeInImage(
              placeholder: const AssetImage('assets/jar-loading.gif'),
              image: NetworkImage(imageUrl),
              width: double.infinity,
              height: 230,
              fit: BoxFit.cover,
              fadeInDuration: const Duration(milliseconds: 300),
            ),
            if (name != null)
              Container(
                alignment: AlignmentDirectional.centerEnd,
                padding: const EdgeInsets.all(10),
                child: Text(name!),
              )
          ],
        ));
  }
}
