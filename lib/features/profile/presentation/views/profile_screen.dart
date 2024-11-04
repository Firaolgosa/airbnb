import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:airbnb/core/constants/app_icons.dart';
import 'package:go_router/go_router.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Your profile',
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 8),
                const Text(
                  'Log in to start planning your next trip.',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey,
                  ),
                ),
                const SizedBox(height: 24),
                ElevatedButton(
                  onPressed: () => context.push('/login'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFFFF385C),
                    foregroundColor: Colors.white,
                    minimumSize: const Size(double.infinity, 48),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  child: const Text(
                    'Log in',
                    style: TextStyle(fontSize: 16),
                  ),
                ),
                const SizedBox(height: 16),
                RichText(
                  text: TextSpan(
                    style: const TextStyle(color: Colors.black),
                    children: [
                      const TextSpan(text: "Don't have an account? "),
                      TextSpan(
                        text: 'Sign up',
                        style: TextStyle(
                          decoration: TextDecoration.underline,
                          color: Theme.of(context).primaryColor,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 40),
                _buildMenuItem(
                  icon: FontAwesomeIcons.gear,
                  title: 'Settings',
                  onTap: () {},
                ),
                _buildMenuItem(
                  icon: FontAwesomeIcons.universalAccess,
                  title: 'Accessibility',
                  onTap: () {},
                ),
                _buildMenuItem(
                  icon: FontAwesomeIcons.house,
                  title: 'Learn about hosting',
                  onTap: () {},
                ),
                _buildMenuItem(
                  icon: FontAwesomeIcons.circleQuestion,
                  title: 'Get help',
                  onTap: () {},
                ),
                _buildMenuItem(
                  icon: FontAwesomeIcons.fileLines,
                  title: 'Terms of Service',
                  onTap: () {},
                ),
                _buildMenuItem(
                  icon: FontAwesomeIcons.shield,
                  title: 'Privacy Policy',
                  onTap: () {},
                ),
                _buildMenuItem(
                  icon: FontAwesomeIcons.code,
                  title: 'Open source licences',
                  onTap: () {},
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildMenuItem({
    required IconData icon,
    required String title,
    required VoidCallback onTap,
  }) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16),
        child: Row(
          children: [
            FaIcon(icon, size: 24),
            const SizedBox(width: 16),
            Expanded(
              child: Text(
                title,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            const Icon(
              Icons.chevron_right,
              color: Colors.grey,
            ),
          ],
        ),
      ),
    );
  }
} 