import 'package:flutter/material.dart';
import 'package:transcribe_app/presentation/screens/responsive_layout.dart';
import 'package:transcribe_app/presentation/screens/responsive_screens/browser_body.dart';
import 'package:transcribe_app/presentation/screens/responsive_screens/desktop_body.dart';
import 'package:transcribe_app/presentation/screens/responsive_screens/mobile_body.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: ResponsiveLayout(mobileBody: MobileBody(), desktopBody: DesktopBody(), browserBody: BrowserBody(),));
  }
}
