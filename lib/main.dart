import 'package:flutter/material.dart';
import 'package:suvaye_intern_project/view/ui_page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(debugShowCheckedModeBanner: false, home: UIpage());
  }
}
