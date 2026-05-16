import 'package:flutter/material.dart';
import '../../core/constants.dart';

class WishlistScreen extends StatelessWidget {
  const WishlistScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        backgroundColor: AppColors.background,
        title: const Text('Wishlist'),
      ),
      body: const Center(
        child: Text(
          'No games added yet',
          style: TextStyle(color: Colors.white, fontSize: 18),
        ),
      ),
    );
  }
}
