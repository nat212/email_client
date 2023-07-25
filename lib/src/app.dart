import 'package:email_client/src/theme.dart';
import 'package:flutter/material.dart';

class EmailClientApp extends StatelessWidget {
  const EmailClientApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: lightTheme,
      darkTheme: darkTheme,
      themeMode: ThemeMode.system,
      home: const Scaffold(
        body: Center(
          child: Text('Hello World!'),
        ),
      ),
    );
  }
}
