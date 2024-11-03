import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/constants/air_theme.dart';
import '../widgets/social_login_button.dart';
import '../widgets/custom_divider.dart';
import '../widgets/phone_input_section.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.close),
          onPressed: () => context.go('/home'),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Text(
                'Log in or sign up to Airbnb',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 32),
              const PhoneInputSection(),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: AirTheme.primaryLight,
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: const Text(
                  'Continue',
                  style: TextStyle(fontSize: 16),
                ),
              ),
              const SizedBox(height: 24),
              const CustomDivider(text: 'or'),
              const SizedBox(height: 24),
              SocialLoginButton(
                icon: const Icon(Icons.email_outlined),
                text: 'Continue with Email',
                onPressed: () {},
              ),
              const SizedBox(height: 16),
              SocialLoginButton(
                icon: const FaIcon(FontAwesomeIcons.facebook),
                text: 'Continue with Facebook',
                onPressed: () {},
              ),
              const SizedBox(height: 16),
              SocialLoginButton(
                icon: const FaIcon(FontAwesomeIcons.google),
                text: 'Continue with Google',
                onPressed: () {},
              ),
              const SizedBox(height: 16),
              SocialLoginButton(
                icon: const FaIcon(FontAwesomeIcons.apple),
                text: 'Continue with Apple',
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
