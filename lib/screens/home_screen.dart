import 'package:flutter/material.dart';
import 'package:finances/front/app_styles.dart';

class HomeScreenIcons extends StatelessWidget {
  const HomeScreenIcons({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        ElevatedButton(
          onPressed: () {
            // Não faz nada, só existe
          },
          child: const Text("Do Thing"),
        ),
        Row(
          children: [
            IconButton(
              icon: const Icon(Icons.file_upload, color: AppTheme.purple),
              onPressed: () {
              },
            ),
            const SizedBox(width: 8),
            IconButton(
              icon: const Icon(Icons.folder, color: AppTheme.purple),
              onPressed: () {
              },
            ),
          ],
        ),
      ],
    );
  }
}
