import 'package:flutter/material.dart';
import 'my_tile.dart';

var backgroundColor = Colors.white;

var myAppBar = AppBar(
  title: const Text(
    'SermonScribe',
    style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
  ),
  iconTheme: const IconThemeData(color: Colors.white),
  backgroundColor: Colors.grey[900],
);

var sideDrawer = Drawer(
  backgroundColor: Colors.grey[100],
  shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.zero)),
  child: Padding(
    padding: const EdgeInsets.all(8.0),
    child: Column(children: [
      AspectRatio(
          aspectRatio: 0.7,
          child: ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) {
                return const MyTile();
              })),
      Expanded(
        child: Align(
          alignment: Alignment.bottomCenter,
          child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
                minimumSize: const Size(300, 60), backgroundColor: Colors.grey[900]),
            child: const Text(
              "Add file",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: Colors.white),
            ),
          ),
        ),
      ),
    ]),
  ),
);

var myDrawer = Drawer(
  backgroundColor: Colors.white,
  child: Padding(
    padding: const EdgeInsets.all(8.0),
    child: Column(
      children: [
        const DrawerHeader(child: Icon(Icons.audiotrack)),
        const ListTile(
          leading: Icon(Icons.dashboard),
          title: Text("D A S H B O A R D"),
        ),
        const ListTile(
          leading: Icon(Icons.settings),
          title: Text("S E T T I N G S"),
        ),
        const ListTile(
          leading: Icon(Icons.audio_file),
          title: Text("T R A N S C R I P T I O N S"),
        ),
        const ListTile(
          leading: Icon(Icons.logout),
          title: Text("L O G O U T"),
        ),
        Expanded(
          child: Align(
            alignment: Alignment.bottomCenter,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  minimumSize: const Size(300, 60),
                  backgroundColor: Colors.grey[900]),
              child: const Text(
                "Add file",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: Colors.white),
              ),
            ),
          ),
        ),
      ],
    ),
  ),
);
