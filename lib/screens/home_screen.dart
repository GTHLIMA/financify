import 'package:finances/front/app_styles.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: AppTheme.white,
     body: Column(
      children: [
        Row(
          children: [
            _mainButton(() => null, 'Do Thing'),
            Row(
              children: [
                _actionButton(() => null, Icons.file_upload),
                const SizedBox(width:8),
                _actionButton(() => null, Icons.folder),

              ],
            )
            ],
          )
        ],
      )
    );
  }

  ElevatedButton _mainButton(Function()? onPressed, String text) {
    return ElevatedButton(onPressed: onPressed, child: Text(text));
  }

  IconButton _actionButton(Function()? onPressed, IconData icon) {
    return IconButton(
      onPressed: onPressed,
      icon: Icon(
        icon, 
        color: AppTheme.purple,
      )
    );
  }
}
