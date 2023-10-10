import 'package:flutter/material.dart';
import 'package:components_flutter/widgets/widgets.dart';

class InputsScreen extends StatelessWidget {
  const InputsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> myFormKey = GlobalKey<FormState>();

    final Map<String, String> formValues = {
      'first_name': 'Andrea',
      'last_name': 'Lopez',
      'email': 'andrea@gmail.com',
      'password': '123456',
      'role': 'Admin'
    };

    return Scaffold(
      appBar: AppBar(title: const Text('Inputs y Forms')),
      body: SingleChildScrollView(
          child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 10,
              ),
              /* -------------------------------------------------FORMULARIO------------------------------------------------------------ */
              child: Form(
                  key: myFormKey,
                  child: Column(
                    children: [
                      CustomInputField(
                        hintText: 'Ingrese su nombre',
                        labelText: 'Nombre',
                        helperText: 'Nombre completo',
                        icon: Icons.verified_user_outlined,
                        formProperty: 'first_name',
                        formValues: formValues,
                      ),
                      const SizedBox(height: 30),
                      CustomInputField(
                        hintText: 'Apellido del usuario ',
                        labelText: 'Apellido',
                        helperText: 'Apellido completo',
                        icon: Icons.verified_user_outlined,
                        formProperty: 'last_name',
                        formValues: formValues,
                      ),
                      const SizedBox(height: 30),
                      CustomInputField(
                        hintText: 'Ingrese su correo',
                        labelText: 'Correo',
                        helperText: 'Correo electrónico',
                        icon: Icons.email_outlined,
                        keyboardType: TextInputType.emailAddress,
                        formProperty: 'email',
                        formValues: formValues,
                      ),
                      const SizedBox(height: 30),
                      CustomInputField(
                        hintText: 'Ingrese su contraseña',
                        labelText: 'Contraseña',
                        helperText: 'Contraseña',
                        icon: Icons.lock_outline,
                        obscureText: true,
                        formProperty: 'password',
                        formValues: formValues,
                      ),
                      const SizedBox(height: 30),
                      DropdownButtonFormField<String>(
                        value: 'Admin',
                        items: const [
                          DropdownMenuItem(
                              value: 'Admin', child: Text('Admin')),
                          DropdownMenuItem(
                              value: 'SuperUser', child: Text('SuperUser')),
                          DropdownMenuItem(
                              value: 'Developer', child: Text('Developer')),
                          DropdownMenuItem(
                              value: 'Jr. Developer',
                              child: Text('Jr. Developer')),
                        ],
                        onChanged: (value) {
                          print('hola');
                          formValues['role'] = value ?? 'Admin';
                        },
                      ),
                      ElevatedButton(
                          child: const SizedBox(
                            width: double.infinity,
                            child: Center(child: Text('Guardar')),
                          ),
                          onPressed: () {
                            FocusScope.of(context).requestFocus(
                                FocusNode()); // Ocultar el teclado

                            if (!myFormKey.currentState!.validate()) {
                              print('Formulario inválido');
                            }

                            print(formValues);
                          })
                    ],
                  )))),
    );
  }
}
