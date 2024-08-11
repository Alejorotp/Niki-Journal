import 'package:flutter/material.dart';
import 'package:journal/ui/colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: Container(
          padding: const EdgeInsets.only(left: 16.0, right: 16.0, top: 48.0),
          child: const Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              TextField(
                style: TextStyle(color: AppColors.accentColor),
                maxLines: 2,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Title',
                  hintStyle: TextStyle(color: AppColors.accentColor),
                ),
              ),
              TextField(
                maxLines: 2,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Title',
                ),
              ),
            ]),
      ),
    );
  }
}
