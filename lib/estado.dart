import 'package:flutter/material.dart';

class StatusScreen extends StatelessWidget {
  final images;
  StatusScreen({this.images});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          contentPadding: EdgeInsets.only(left: 10, right: 7),
          leading: Container(
              child: CircleAvatar(
            backgroundImage: AssetImage('user/mi.jpg'),
          )),
          title: Text(
            'Mi estado',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          subtitle: Text('Añade una actualización'),
        ),
        Container(
          color: Colors.grey[300],
          padding: EdgeInsets.all(13),
          child: Row(
            children: [
              Text('Recientes')
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: ListTile(
            contentPadding: EdgeInsets.only(left: 5, right: 7),
            leading: Container(
                width: 70,
                height: 100,
                child: CircleAvatar(
                  backgroundImage: AssetImage('user/amor.jpg'),
                )),
            title: Text('Jaqueling'),
            subtitle: Text('30 minutos'),
          ),
        ),
        Divider(),
        Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: ListTile(
            contentPadding: EdgeInsets.only(left: 5, right: 7),
            leading: Container(
                width: 70,
                height: 100,
                child: CircleAvatar(
                  backgroundImage: AssetImage('user/micasa.jpg'),
                )),
            title: Text('Mayte'),
            subtitle: Text('hoy 2:14'),
          ),
        ),
        Divider(),
        Container(
          color: Colors.grey[300],
          padding: EdgeInsets.all(13),
          child: Row(
            children: [
              Text('visto')
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: ListTile(
            contentPadding: EdgeInsets.only(left: 5, right: 7),
            leading: Container(
                width: 70,
                height: 100,
                child: CircleAvatar(
                  backgroundImage: AssetImage('user/live.jpg'),
                )),
            title: Text('Saimon'),
            subtitle: Text('Ayer 1:00 Pm'),
          ),
        ),
      ],
    );
  }
}
