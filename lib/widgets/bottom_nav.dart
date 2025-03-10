import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:weather_app/core/routes/app_router.gr.dart';

@RoutePage()
class BottomNavigationPage extends StatefulWidget {
  const BottomNavigationPage({super.key});

  @override
  State<BottomNavigationPage> createState() => _BottomNavigationPageState();
}

class _BottomNavigationPageState extends State<BottomNavigationPage> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });

    // Navigate to the correct screen inside HomeRoute
    switch (index) {
      case 0:
        context.router
            .replace(BottomNavigationRoute()); // ✅ Change to DashboardRoute
        break;
      case 1:
        context.router.replace(SettingsRoute()); // ✅ Change to SettingsRoute
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AutoRouter(), // ✅ Shows nested routes (Dashboard/Settings)
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.dashboard), label: "Dashboard"),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings), label: "Settings"),
        ],
      ),
    );
  }
}
