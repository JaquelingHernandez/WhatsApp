import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  final images;
  final title;
  final msg;

  ChatScreen({this.images, this.title, this.msg});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: ListTile(
            contentPadding: EdgeInsets.only(left: 5, right: 7),
            leading: Container(
                width: 70,
                height: 100,
                child: CircleAvatar(
                  backgroundImage: AssetImage(images),
                )),
            title: Text(title),
            subtitle: Text('hola'),
            trailing: Text(
              "8AM",
              style: TextStyle(color: Colors.green, fontSize: 15),
            ),
          ),
        ),
        Divider()
      ],
    );
  }
}
