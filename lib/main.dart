import 'package:flutter/material.dart';
import 'package:kuis_123220136/login_page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,

      theme: ThemeData.light().copyWith(
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: AppBarTheme(
          color: Colors.blue,
          titleTextStyle: TextStyle(
            color: Colors.white,
            fontSize: 25)
          ),
        elevatedButtonTheme: ElevatedButtonThemeData(style: ButtonStyle(
          backgroundColor: WidgetStatePropertyAll(Colors.blue),
          foregroundColor: WidgetStatePropertyAll(Colors.white)
          )
      ),
    ),
    home: LoginPage(),
    );
  }
}
