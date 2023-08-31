import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    const modArg =
        String.fromEnvironment('MODE', defaultValue: 'MODE NOT DEFINED');
    const supabaseKeyArg = String.fromEnvironment('SUPABASEKEY',
        defaultValue: 'SUPABASEKEY NOT DEFINED');
    debugPrint('MODE: $modArg' '\nSUPABASEKEY: $supabaseKeyArg');
    return const MaterialApp(
      home: Scaffold(
        body: Center(
          child: Text('Hello Visitor! You are in $modArg mode'),
        ),
      ),
    );
  }
}
