import 'package:flutter/services.dart';
import 'dart:convert';

class _MenuProvider {
  //Atributos
  List<dynamic> opciones = [];

  //Constructores
  _MenuProvider();
  //Metodos
  Future<List<dynamic>> cargarData() async {
    final resp = await rootBundle.loadString('data/menu_opts.json');

    Map dataMap = json.decode(resp);
    //print(dataMap['rutas']);
    opciones = dataMap['rutas'];

    return opciones;
  }
}

final menuProvider = new _MenuProvider();
