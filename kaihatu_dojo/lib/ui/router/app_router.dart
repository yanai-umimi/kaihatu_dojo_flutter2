import 'package:flutter/material.dart';
import 'package:kaihatu_dojo/ui/screens/add_book_screen.dart';
import 'package:kaihatu_dojo/ui/screens/book_confirm_screen.dart';
import '../screens/bottom_navigation_screen.dart';
import '../screens/settings_screen.dart';

class AppRouter {
  Route? onGenerateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case '/':
        return MaterialPageRoute(
          builder: (_) => const BottomNavigationScreen(),
        );
      case '/screens/add_book':
        return MaterialPageRoute(
          builder: (_) => AddBookScreen(),
        );
      case '/screens/confirm_book':
        return MaterialPageRoute(
          builder: (_) => BookConfirmScreen(
            isbn: 'ooo',
          ),
        );
      case '/screens/settings':
        return MaterialPageRoute(
          builder: (_) => const SettingScreen(),
        );
      default:
        return null;
    }
  }
}
