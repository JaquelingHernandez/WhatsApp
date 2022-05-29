import 'package:flutter/material.dart';
import 'package:whatsapp/llamada.dart';
import 'package:whatsapp/chats.dart';
import 'package:whatsapp/estado.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    _tabController = new TabController(length: 4, initialIndex: 1, vsync: this)
      ..addListener(() {
        setState(() {});
      });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff128C7E),
        title: Text('WhatsApp'),
        actions: [
          // Widget for the search
          const Icon(Icons.search),
          // Widget for implementing the three-dot menu
          PopupMenuButton(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            itemBuilder: (context) {
              return [
                // In this case, we need 5 popupmenuItems one for each option.
                const PopupMenuItem(child: Text('Nuevo Grupo')),
                const PopupMenuItem(child: Text('Nueva difunción')),
                const PopupMenuItem(child: Text('Dipositivo vinculados')),
                const PopupMenuItem(child: Text('mensajes destacados')),
                const PopupMenuItem(child: Text('Agustes')),
              ];
            },
          ),
        ],
        bottom: TabBar(
          isScrollable: true,
          controller: _tabController,
          indicatorColor: Colors.white,
          labelPadding: EdgeInsets.all(12),
          tabs: [
            Icon(Icons.camera_alt),
            Container(width: 90, alignment: Alignment.center, child: Text('CHATS')),
            Container(width: 90, alignment: Alignment.center, child: Text('ESTADO')),
            Container(width: 90, alignment: Alignment.center, child: Text('LLAMADA'))
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          Text('CAMERA'),

          // START CHATS
          ListView.builder(
              itemCount: 1,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    ChatScreen(
                      images: 'user/besos.jpg',
                      title: 'Morelia',
                    ),
                    ChatScreen(
                      images: 'user/armin.jpg',
                      title: 'Francis',
                    ),
                    ChatScreen(
                      images: 'user/live.jpg',
                      title: 'Evenor',
                    ),
                  ],
                );
              }),

          ListView.builder(
              itemCount: 1,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    StatusScreen(
                      //images: 'user/mujer.jpg',
                      images: 'user/suenos-jpg.jpg',
                    ),
                  ],
                );
              }),

          // START CALLS
          ListView.builder(
              itemCount: 1,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    CallsScreen(
                      images: 'user/mujer.jpg',
                      title: 'Morelia',
                    ),
                    CallsScreen(
                      images: 'user/micasa.jpg',
                      title: 'Karla',
                    ),
                    CallsScreen(
                      images: 'user/besos.jpg',
                      title: 'Francis',
                    ),
                  ],
                );
              }),
        ],
      ),
      floatingActionButton: _tabController.index == 1
          ? FloatingActionButton(
              onPressed: () {},
              backgroundColor: Theme.of(context).primaryColorLight,
              child: Icon(Icons.message),
            )
          : FloatingActionButton(
              onPressed: () {},
              backgroundColor: Theme.of(context).primaryColorLight,
              child: Icon(Icons.camera_alt),
            ),
    );
  }
}
