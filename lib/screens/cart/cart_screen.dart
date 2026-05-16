import 'package:flutter/material.dart';
import '../../core/constants.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        backgroundColor: AppColors.background,
        title: const Text('Cart'),
      ),
      body: const Center(
        child: Text(
          'Your cart is empty',
          style: TextStyle(color: Colors.white, fontSize: 18),
        ),
      ),
    );
  }
}
