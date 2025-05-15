import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:travelbuddy/screen/home_screen.dart';
//import 'package:travelbuddy/screen/search_screen.dart';
import 'package:travelbuddy/utils/routs.dart';
import 'package:travelbuddy/widgets/animated_favorite_button.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (_) => ThemeProvider(),
      child: const MainApp(),
    ),
  );
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
  final themeProvider = Provider.of<ThemeProvider>(context);
    return MaterialApp(
       theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      themeMode: themeProvider.currentTheme,
      initialRoute: '/',
      routes: appRoutes,
      home: HomeScreen(controller:ScrollController() ), 
      debugShowCheckedModeBanner: false,
    );
  }
}
