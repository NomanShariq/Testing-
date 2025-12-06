import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // 1. We extend the body behind the AppBar so the gradient covers the whole screen
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: const Text(
          "DASHBOARD",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            letterSpacing: 1.5,
            fontSize: 20,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent, // Glass effect
        elevation: 0,
        leading: IconButton(icon: const Icon(Icons.menu), onPressed: () {}),
        actions: [
          IconButton(
            icon: const Icon(Icons.notifications_none_outlined),
            onPressed: () {},
          ),
        ],
      ),
      // 2. Main Background Gradient
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xFF1A1A2E), // Deep Dark Blue
              Color(0xFF16213E), // Slightly lighter blue
              Color(0xFF0F3460), // Accent Blue
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                // 3. Hero Section / Illustration Placeholder
                const Spacer(),
                const Icon(
                  Icons.rocket_launch_outlined,
                  size: 80,
                  color: Colors.white70,
                ),
                const SizedBox(height: 20),
                const Text(
                  "Welcome Back",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  "Ready to explore the universe?",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white.withOpacity(0.7),
                    fontSize: 16,
                  ),
                ),
                const Spacer(),

                // 4. Custom Buttons
                _buildCoolButton(
                  context,
                  label: "Go to Details",
                  icon: Icons.explore,
                  color1: const Color(0xFFE94560),
                  color2: const Color(0xFFC70039),
                  onTap: () => Navigator.pushNamed(context, '/details'),
                ),

                const SizedBox(height: 20),

                _buildCoolButton(
                  context,
                  label: "My Profile",
                  icon: Icons.person,
                  color1: const Color(0xFF4361EE),
                  color2: const Color(0xFF3F37C9),
                  onTap: () => Navigator.pushNamed(context, '/profile'),
                ),
                const SizedBox(height: 50),
              ],
            ),
          ),
        ),
      ),
    );
  }

  // A helper method to create consistent, aesthetic buttons
  Widget _buildCoolButton(
    BuildContext context, {
    required String label,
    required IconData icon,
    required Color color1,
    required Color color2,
    required VoidCallback onTap,
  }) {
    return Container(
      height: 60,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: color1.withOpacity(0.4),
            blurRadius: 12,
            offset: const Offset(0, 6),
          ),
        ],
        gradient: LinearGradient(
          colors: [color1, color2],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: onTap,
          borderRadius: BorderRadius.circular(20),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  label,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.2),
                    shape: BoxShape.circle,
                  ),
                  child: Icon(icon, color: Colors.white),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
