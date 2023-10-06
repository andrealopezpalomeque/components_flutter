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
            SizedBox(height: 30),
            CustomCardType2(),
            SizedBox(height: 30),
            CustomCardType2()
          ],
        ));
  }
}
