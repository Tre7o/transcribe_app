import 'package:flutter/material.dart';

// ignore: must_be_immutable
class TopBar extends StatefulWidget implements PreferredSizeWidget {
  bool isDashboardTapped;
  bool isTranscriptionsTapped;
  bool isSettingsTapped;

  TopBar(
      {super.key,
      required this.isDashboardTapped,
      required this.isSettingsTapped,
      required this.isTranscriptionsTapped});

  @override
  State<TopBar> createState() => _TopBarState();

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size(double.maxFinite, 55);
}

class _TopBarState extends State<TopBar> {

  @override
  Widget build(BuildContext context) {
    return AppBar(
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
                  onTap: () {
                    setState(() {
                      widget.isDashboardTapped = true;
                      widget.isSettingsTapped = false;
                      widget.isTranscriptionsTapped = false;
                      Navigator.pushReplacementNamed(context, '/home');
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        border: widget.isDashboardTapped
                            ? Border(bottom: BorderSide(color: Colors.white))
                            : Border(bottom: BorderSide.none)),
                    child: Text("Dashboard"),
                  )),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 20),
              child: GestureDetector(
                  onTap: () {
                    setState(() {
                      widget.isTranscriptionsTapped = true;
                      widget.isDashboardTapped = false;
                      widget.isSettingsTapped = false;
                      Navigator.pushReplacementNamed(
                          context, '/transcriptions');
                    });
                  },
                  child: Container(
                      decoration: BoxDecoration(
                          border: widget.isTranscriptionsTapped
                              ? Border(bottom: BorderSide(color: Colors.white))
                              : Border(bottom: BorderSide.none)),
                      child: Text("Transcriptions"))),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 20),
              child: GestureDetector(
                  onTap: () {
                    setState(() {
                      widget.isSettingsTapped = true;
                      widget.isDashboardTapped = false;
                      widget.isTranscriptionsTapped = false;
                      Navigator.pushReplacementNamed(context, '/settings');
                    });
                  },
                  child: Container(
                      decoration: BoxDecoration(
                          border: widget.isSettingsTapped
                              ? Border(bottom: BorderSide(color: Colors.white))
                              : Border(bottom: BorderSide.none)),
                      child: Text("Settings"))),
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
  }
}
