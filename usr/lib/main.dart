import 'package:flutter/material.dart';
import 'package:couldai_user_app/layout/main_layout.dart';

void main() {
  runApp(const WireframeApp());
}

class WireframeApp extends StatelessWidget {
  const WireframeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Wireframe App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.blueGrey,
          brightness: Brightness.light,
        ),
        scaffoldBackgroundColor: Colors.grey[50],
        appBarTheme: const AppBarTheme(
          centerTitle: true,
          elevation: 0,
        ),
        cardTheme: CardTheme(
          elevation: 0,
          shape: RoundedRectangleBorder(
            side: BorderSide(color: Colors.grey.shade300),
            borderRadius: BorderRadius.circular(12),
          ),
        ),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const MainLayout(),
      },
    );
  }
}
