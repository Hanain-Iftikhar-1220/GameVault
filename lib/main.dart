import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'core/constants.dart';
import 'firebase_options.dart';
import 'routes/app_routes.dart';
import 'screens/splash_screen.dart';
import 'screens/search/search_screen.dart';
import 'screens/auth/login_screen.dart';
import 'screens/home/home_screen.dart';
import 'screens/cart/cart_screen.dart';
import 'screens/wishlist/wishlist_screen.dart';
import 'screens/profile/profile_screen.dart';
import 'screens/library/library_screen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  runApp(const GameVaultApp());
}

class GameVaultApp extends StatelessWidget {
  const GameVaultApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'GameVault',
      theme: ThemeData(
        scaffoldBackgroundColor: AppColors.background,
        primaryColor: AppColors.primary,
      ),

      initialRoute: '/splash',

      routes: {
        '/splash': (_) => const SplashScreen(),

        AppRoutes.home: (_) => const HomeScreen(),

        AppRoutes.login: (_) => const LoginScreen(),

        AppRoutes.search: (_) => const SearchScreen(),

        AppRoutes.cart: (_) => const CartScreen(),

        AppRoutes.wishlist: (_) => const WishlistScreen(),

        AppRoutes.profile: (_) => const ProfileScreen(),

        AppRoutes.library: (_) => const LibraryScreen(),
      },
    );
  }
}
