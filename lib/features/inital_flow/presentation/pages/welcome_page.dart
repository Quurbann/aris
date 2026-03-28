import 'package:aris/core/colors/colors.dart';
import 'package:aris/core/widgets/primary_button.dart';
import 'package:aris/features/auth/presentation/pages/sign_up_page.dart';
import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF9F0F5),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            children: [
              Expanded(
                flex: 5,
                child: Padding(
                  padding: const EdgeInsets.only(top: 24.0),
                  child: Image.asset(
                    'assets/images/png/initial_flow/home.png',
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              Expanded(
                flex: 4,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Welcome to the World\nof Languages',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF1E2D4E),
                        height: 1.3,
                      ),
                    ),
                    const SizedBox(height: 16),
                    const Text(
                      'Energistically implement expan arrchannels through '
                      'visionary methods uickly customize act deploy functionality',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 13.5,
                        color: Color(0xFF9AA0B0),
                        height: 1.55,
                      ),
                    ),
                    const SizedBox(height: 28),
                    PrimaryButton(text: 'Sign In', onPressed: () {}, backgroundColor: Colors.white, textColor: AppColors.primaryTextColor),
                    const SizedBox(height: 14),
                    PrimaryButton(text: 'Create An Account', onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (_) => SignUpPage())), backgroundColor: AppColors.primaryColor, textColor: Colors.white),
                  ],
                ),
              ),
              const Expanded(flex: 1, child: SizedBox()),
            ],
          ),
        ),
      ),
    );
  }
}
