import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Avatar Page'),
        actions: <Widget>[
          Container(
            padding: EdgeInsets.all(3),
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                  //'https://datosdefamosos.com/wp-content/uploads/2019/11/emily-rudd.jpg'),
                  'https://i.pinimg.com/originals/41/48/64/4148644e45c9564b4c0e8307fa4f51b2.jpg'),
              radius: 25,
            ),
          ),
          Container(
            child: CircleAvatar(
              child: Text('JD'),
              backgroundColor: Colors.white,
            ),
            margin: EdgeInsets.only(right: 10),
          ),
        ],
      ),
      body: Center(
        child: FadeInImage(
          placeholder: AssetImage('assets/jar-loading.gif'),
          image: NetworkImage(
              'https://i.pinimg.com/originals/41/48/64/4148644e45c9564b4c0e8307fa4f51b2.jpg'),
        ),
      ),
    );
  }
}
