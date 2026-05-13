import 'package:flutter/material.dart';
import '../../core/constants.dart';
import '../../models/game_model.dart';
import '../../widgets/game_card.dart';
import '../auth/login_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<GameModel> games = [
      GameModel(title: 'Cyber Racing', genre: 'Racing'),
      GameModel(title: 'Shadow Arena', genre: 'Action'),
      GameModel(title: 'Pixel Warriors', genre: 'Adventure'),
    ];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.background,
        elevation: 0,
        title: const Text('GameVault'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Popular Games',
              style: TextStyle(
                color: Colors.white,
                fontSize: 26,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 20),

            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => const LoginScreen()),
                );
              },
              child: const Text('Login'),
            ),

            const SizedBox(height: 20),

            Expanded(
              child: ListView.builder(
                itemCount: games.length,
                itemBuilder: (context, index) {
                  return GameCard(game: games[index]);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
