import 'package:components_flutter/theme/app_theme.dart';
import 'package:flutter/material.dart';

class SliderScreen extends StatefulWidget {
  const SliderScreen({Key? key}) : super(key: key);

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  double _sliderValue = 100;
  bool _sliderEnabled = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Slider and Checks')),
        body: Column(
          children: [
            Slider.adaptive(
                //adaptative -> depende de la plataforma iOS o Android
                min: 50,
                max: 400,
                activeColor: AppTheme.primary,
                //divisions: 10, //puntos intermedios
                value: _sliderValue,
                onChanged: (value) {
                  _sliderValue = value;
                  setState(() {}); //para que se redibuje
                }),
            // Checkbox(
            //     value: _sliderEnabled,
            //     onChanged: (value) {
            //       _sliderEnabled = value ?? true;
            //       setState(() {});
            //     }),
            // Switch(
            //     value: _sliderEnabled,
            //     onChanged: (value) => setState(() {
            //           _sliderEnabled = value;
            //         })),
            CheckboxListTile(
                activeColor: AppTheme.primary,
                title: const Text('Habilitar Slider'),
                value: _sliderEnabled,
                onChanged: (value) => setState(() {
                      _sliderEnabled = value ?? true;
                    })),
            SwitchListTile.adaptive(
                activeColor: AppTheme.primary,
                title: const Text('Habilitar Slider'),
                value: _sliderEnabled,
                onChanged: (value) => setState(() {
                      _sliderEnabled = value;
                    })),

            const AboutListTile(), //! para ver la info de la app

            Expanded(
              child: SingleChildScrollView(
                child: Image(
                    image: const NetworkImage(
                      'https://e7.pngegg.com/pngimages/674/742/png-clipart-iphone-x-front-iphone-x.png',
                    ),
                    fit: BoxFit.contain,
                    width: _sliderValue),
              ),
            ),
          ],
        ));
  }
}
