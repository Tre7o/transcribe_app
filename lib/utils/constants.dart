import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:transcribe_app/utils/widgets/custom_dialog.dart';
import 'package:transcribe_app/utils/widgets/my_tile.dart';

import '../presentation/controllers/transcribe_controller.dart';

var backgroundColor = Colors.white;

var myAppBar = AppBar(
  title: const Text(
    'SermonScribe',
    style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
  ),
  iconTheme: const IconThemeData(color: Colors.white),
  backgroundColor: Colors.grey[900],
);

var desktopBar = AppBar(
  title: const Text('SermonScribe',
      style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600)),
  iconTheme: const IconThemeData(color: Colors.white),
  backgroundColor: Colors.grey[900],
  actions: [
    Row(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 20),
          child: GestureDetector(
              onTap: () {},
              child: Container(
                  decoration: BoxDecoration(

                  ),
                  margin: const EdgeInsets.only(bottom: 4),
                  child: Text("Dashboard"),                 
                )
              ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 20),
          child: GestureDetector(onTap: () {}, child: Text("Transcriptions")),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 20),
          child: GestureDetector(onTap: () {}, child: Text("Settings")),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 20),
          child: ElevatedButton(
            onPressed: () {},
            child: Text(
              "Logout",
              style: TextStyle(
                  color: Colors.grey[900], fontWeight: FontWeight.bold),
            ),
            style: ElevatedButton.styleFrom(
                minimumSize: const Size(200, 50),
                backgroundColor: Colors.white,
                elevation: 1),
          ),
        )
      ],
    ),
  ],
);

// drawer for rendering lists dynamically
Drawer buildSideDrawer(BuildContext context) {
  final transcribeController = Get.put(TranscribeController());

  return Drawer(
    backgroundColor: Colors.grey[100],
    shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.zero)),
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(children: [
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Align(
            alignment: Alignment.topLeft,
            child: Text(
              "Your transcriptions",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
        ),
        AspectRatio(
            aspectRatio: 0.7,
            child: Obx(
              () => ListView.builder(
                  itemCount: transcribeController.listItem.value,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.grey[300],
                          ),
                          child: MyTile(index: index)),
                    );
                  }),
            )),
        Expanded(
          child: Align(
            alignment: Alignment.bottomCenter,
            child: ElevatedButton(
              onPressed: () {
                showDialog(
                    context: context, builder: (context) => CustomDialog());
              },
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
      ]),
    ),
  );
}

Drawer buildMyDrawer(BuildContext context) {
  return Drawer(
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
                onPressed: () {
                  showDialog(
                      context: context, builder: (context) => CustomDialog());
                },
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
}
