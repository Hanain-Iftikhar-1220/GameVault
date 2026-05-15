import 'package:flutter/material.dart';
import '../../core/constants.dart';
import '../../models/game_model.dart';
import '../../widgets/game_card.dart';
import '../auth/login_screen.dart';
import '../search/search_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<GameModel> games = [
      GameModel(title: 'Cyber Racing', genre: 'Racing'),
      GameModel(title: 'Shadow Arena', genre: 'Action'),
      GameModel(title: 'Pixel Warriors', genre: 'Adventure'),
      GameModel(title: 'Battle Zone', genre: 'Shooter'),
    ];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.background,
        elevation: 0,
        title: const Text('GameVault'),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => const SearchScreen()),
              );
            },
            icon: const Icon(Icons.search),
          ),
        ],
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
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 8),

            const Text(
              'Explore trending games',
              style: TextStyle(color: Colors.white70, fontSize: 15),
            ),

            const SizedBox(height: 20),

            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  _buildCategory('Action'),
                  _buildCategory('Adventure'),
                  _buildCategory('Racing'),
                  _buildCategory('Shooter'),
                ],
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

  Widget _buildCategory(String title) {
    return Container(
      margin: const EdgeInsets.only(right: 12),
      padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 10),
      decoration: BoxDecoration(
        color: AppColors.card,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text(title, style: const TextStyle(color: Colors.white)),
    );
  }
}
