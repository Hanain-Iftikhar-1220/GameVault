import 'package:flutter/material.dart';
import '../../core/constants.dart';

class GameDetailScreen extends StatelessWidget {
  final String title;

  const GameDetailScreen({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(backgroundColor: AppColors.background, title: Text(title)),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 220,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.grey.shade700,
                borderRadius: BorderRadius.circular(16),
              ),
            ),

            const SizedBox(height: 20),

            Text(
              title,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 12),

            const Text(
              'An exciting action adventure game with immersive gameplay.',
              style: TextStyle(color: Colors.white70, fontSize: 16),
            ),

            const SizedBox(height: 20),

            ElevatedButton(onPressed: () {}, child: const Text('Buy Now')),
          ],
        ),
      ),
    );
  }
}
