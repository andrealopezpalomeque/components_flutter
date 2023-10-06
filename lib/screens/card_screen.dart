import 'package:flutter/material.dart';
import 'package:components_flutter/widgets/widgets.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('CardScreen'),
        ),
        body: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 30),
          children: const [
            CustomCardType1(),
            SizedBox(height: 20),
            CustomCardType2(
                imageUrl:
                    'https://i.blogs.es/a139cf/captura-de-pantalla-2020-11-09-a-las-10.27.43/1366_2000.jpg',
                name: 'MacOS Big Sur'),
            SizedBox(height: 20),
            CustomCardType2(
                imageUrl:
                    'https://www.infobae.com/new-resizer/sdFMpPuK8dV5ayDtn8IsWfNH61c=/arc-anglerfish-arc2-prod-infobae/public/I5OPHECMPFDKRCF4HJQRCO57OQ.jpg',
                name: 'MacOS Sonoma')
          ],
        ));
  }
}
