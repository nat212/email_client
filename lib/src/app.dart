import 'package:email_client/src/router.dart';
import 'package:email_client/src/theme.dart';
import 'package:flutter/material.dart';

class EmailClientApp extends StatelessWidget {
  const EmailClientApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      theme: lightTheme,
      darkTheme: darkTheme,
      themeMode: ThemeMode.system,
      routerConfig: router,
    );
  }
}
