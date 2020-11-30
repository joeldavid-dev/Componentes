import 'package:flutter/material.dart';
//import 'package:componentes/src/pages/alert_page.dart';
import 'package:componentes/src/providers/menu_provider.dart';
import 'package:componentes/src/utils/icono_string_util.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Componentes'),
      ),
      body: _lista(),
    );
  }

  Widget _lista() {
    //menuProvider.cargarData()

    return FutureBuilder(
      future: menuProvider.cargarData(), //Se enlaza con un dato future
      initialData: [], //puede ser opcional
      builder: (context, AsyncSnapshot<List<dynamic>> snapshot) {
        print(snapshot.data);

        return ListView(
          children: _listaItems(snapshot.data, context),
        );
      },
    );
  }

  List<Widget> _listaItems(List<dynamic> data, BuildContext context) {
    final List<Widget> opciones = [];

    data.forEach((opt) {
      final widgetTemp = ListTile(
          title: Text(opt['texto']),
          leading: getIcon(opt['icon']),
          trailing: Icon(Icons.keyboard_arrow_right, color: Colors.pink),
          onTap: () {
            Navigator.pushNamed(context, opt['ruta']);
            //Primer forma de navegación vista:
            //final route = MaterialPageRoute(builder: (context) => AlertPage());
            //Navigator.push(context, route);
          });
      opciones..add(widgetTemp)..add(Divider());
    });
    return opciones;
  }
}
