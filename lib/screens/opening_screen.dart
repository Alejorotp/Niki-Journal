import 'package:flutter/material.dart';
import 'package:journal/ui/colors.dart';
import 'package:journal/screens/home_screen.dart';

class OpeningScreen extends StatelessWidget {
  const OpeningScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Welcome to',
              style: TextStyle(
                color: AppColors.accentColor,
                fontSize: 24,
              ),
            ),
            const Text(
              'Niki Journal',
              style: TextStyle(
                color: AppColors.accentColor,
                fontSize: 36,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 24),
            TextButton(
              onPressed: () {
                // Navigate to the next screen
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const HomeScreen(),
                  ),
                );
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(AppColors.accentColor),
                padding: MaterialStateProperty.all(
                  const EdgeInsets.symmetric(
                    horizontal: 24,
                    vertical: 12,
                  ),
                ),
              ),
              child: const Text(
                'Start Writing',
                style: TextStyle(
                  color: AppColors.primaryColor,
                  fontSize: 18,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}