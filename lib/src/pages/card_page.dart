import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cards'),
      ),
      body: ListView(
        padding: EdgeInsets.all(10),
        children: <Widget>[
          _cardTipo1(),
          SizedBox(
            height: 20,
          ),
          _cardTipo2(),
        ],
      ),
    );
  }
}

Widget _cardTipo1() {
  return Card(
    elevation: 20,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
    child: Column(
      children: [
        ListTile(
          leading: Icon(
            Icons.photo_album,
            color: Colors.blue,
          ),
          title: Text('Soy el titulo de la tarjeta'),
          subtitle: Text(
              'Esta es la descripcion de la tarjeta que quiero ver para tener una idea de lo que quiero mostrar'),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            FlatButton(onPressed: null, child: Text('Calcelar')),
            FlatButton(onPressed: null, child: Text('Ok')),
          ],
        ),
      ],
    ),
  );
}

Widget _cardTipo2() {
  final card = Container(
    child: Column(
      children: <Widget>[
        FadeInImage(
          image: NetworkImage(
              'https://fiverr-res.cloudinary.com/images/q_auto,f_auto/gigs/130238819/original/d4096d4950eba421600f21c6c753c19375222eb6/draw-you-a-landscape-image-with-ms-paint.png'),
          placeholder: AssetImage('assets/jar-loading.gif'),
          fadeInDuration: Duration(milliseconds: 200),
          height: 300,
          fit: BoxFit.cover,
        ),
        Container(
            padding: EdgeInsets.all(10), child: Text('No tengo idea que poner'))
      ],
    ),
  );

  return Container(
    child: ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: card,
    ),
    decoration: BoxDecoration(
      color: Colors.white,
      boxShadow: <BoxShadow>[
        BoxShadow(color: Colors.black26, blurRadius: 20, offset: Offset(0, 10)),
      ],
      borderRadius: BorderRadius.circular(20),
    ),
  );
}
