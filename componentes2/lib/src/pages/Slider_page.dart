import 'package:flutter/material.dart';

class SliderPage extends StatefulWidget {
  @override
  _SliderPageState createState() => _SliderPageState();
}

//tabla de propiedades o variables
double valor = 100.0;
double _valorSlider = 100.0;
bool _bloquearCheck = false;

class _SliderPageState extends State<SliderPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Slider'),
      ),
      body: Container(
        padding: EdgeInsets.only(top: 50.0),
        child: Column(
          children: <Widget>[
            _crearSlider(),
            _crearCheBox(),
            _crearSwich(),
            Expanded(
              child: _crearImagen(),
            ),
          ],
        ),
      ),
    );
  }

  Widget _crearSlider() {
    return Slider(
        activeColor: Colors.indigo,
        label: 'Tamaòo de la imagen',
        //divisions: 20,
        value: _valorSlider,
        min: 10.0,
        max: 400.0,
        onChanged: //Es como un condicional IF
            (_bloquearCheck)
                ? null
                : (valor) {
                    setState(() {
                      _valorSlider = valor;
                    });
                  });
  }

  Widget _crearImagen() {
    return Image(
      image: NetworkImage(
          'https://ep01.epimg.net/elpais/imagenes/2019/10/30/album/1572424649_614672_1572453030_noticia_normal.jpg'),
      width: _valorSlider,
      fit: BoxFit.contain,
    );
  }

  Widget _crearCheBox() {
    // Opcion 1 Checkbox Sensillo
    /* return Checkbox(
      value: _bloquearCheck,
      onChanged: (valor) {
        setState(() {
          _bloquearCheck = valor!;
        });
      },
    ); */
    // Opcion 2 Checkbox List Title
    return CheckboxListTile(
        title: Text('Bloquea la imagen'),
        value: _bloquearCheck,
        onChanged: (valor) {
          setState(() {
            _bloquearCheck = valor!;
          });
        });
  }

  Widget _crearSwich() {
    return SwitchListTile(
        title: Text('Bloque Imagen con Switch'),
        value: _bloquearCheck,
        onChanged: (valor) {
          setState(() {
            _bloquearCheck = valor;
          });
        });
  }
}
