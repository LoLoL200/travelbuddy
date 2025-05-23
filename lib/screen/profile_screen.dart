import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:travelbuddy/widgets/animated_favorite_button.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    final isDark = themeProvider.dark;

    return Scaffold(
      //dark and white thema
      body: AnimatedContainer(
        duration: Duration(milliseconds: 400),
        color: isDark ? Colors.black : Colors.white,
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              CircleAvatar(
                radius: 50,
                backgroundColor: Colors.amber,
              ),
//Name person
              SizedBox(height: 20),
              Text(
                'Pavel',
                style: TextStyle(
                  fontSize: 24,
                  color: isDark ? Colors.white : Colors.black,
                ),
              ),
              SizedBox(height: 10),
//Email person              
              Text(
                'pavel123@gmail.com',
                style: TextStyle(
                  fontSize: 16,
                  color: isDark ? Colors.white70 : Colors.black87,
                ),
              ),
              SizedBox(height: 30),
//Buttom for black and white thema              
              ElevatedButton(
                onPressed: () {
                  themeProvider.toggleTheme();
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: isDark ? Colors.white24 : Colors.black87,
                  foregroundColor: Colors.white,
                ),
                child: Text(isDark ? 'Светлая тема' : 'Тёмная тема'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
