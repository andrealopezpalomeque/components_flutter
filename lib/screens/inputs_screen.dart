import 'package:flutter/material.dart';
import 'package:components_flutter/widgets/widgets.dart';

class InputsScreen extends StatelessWidget {
  const InputsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Inputs y Forms')),
      body: const SingleChildScrollView(
          child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 10,
              ),
              child: Column(
                children: [
                  CustomInputField(
                    hintText: 'Ingrese su nombre',
                    labelText: 'Nombre',
                    helperText: 'Nombre completo',
                    icon: Icons.verified_user_outlined,
                  ),
                ],
              ))),
    );
  }
}
