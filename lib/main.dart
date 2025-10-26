import 'package:first_app/screens/home.dart';
import 'package:first_app/screens/notifications.dart';
import 'package:first_app/screens/profile.dart';
import 'package:first_app/screens/search.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const MainScreen(),
        '/profile': (context) => const Profile(),
        '/notifications': (context) => const Notifications(),
        '/search': (context) => const Search(),
      },
    );
  }
}

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Home();
  }
}
