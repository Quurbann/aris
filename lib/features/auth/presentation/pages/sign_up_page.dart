import 'package:aris/core/colors/colors.dart';
import 'package:aris/core/widgets/primary_button.dart';
import 'package:aris/features/auth/data/repositories/language_repositories_impl.dart';
import 'package:aris/features/auth/domain/usecases/get_languages.dart';
import 'package:aris/features/auth/presentation/pages/select_language_page.dart';
import 'package:aris/features/auth/presentation/provider/select_language_provider.dart';
import 'package:aris/features/auth/presentation/provider/sign_up_page_provider.dart';
import 'package:aris/features/auth/presentation/widgets/auth_password_field.dart';
import 'package:aris/features/auth/presentation/widgets/auth_social_button.dart';
import 'package:aris/features/auth/presentation/widgets/auth_text_field.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:svg_flutter/svg.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => SignUpProvider(),
      child: const _RegisterView(),
    );
  }
}

class _RegisterView extends StatelessWidget {
  const _RegisterView();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF4EEF8),
      resizeToAvoidBottomInset: true,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.fromLTRB(24, 28, 24, 0),
              child: Text(
                'Create Your free\nAccount',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF1E2D4E),
                  height: 1.3,
                ),
              ),
            ),
            const SizedBox(height: 24),
            Expanded(
              child: SingleChildScrollView(
                padding: const EdgeInsets.fromLTRB(24, 0, 24, 24),
                keyboardDismissBehavior:
                    ScrollViewKeyboardDismissBehavior.onDrag,
                child: Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: SocialButton(
                            label: 'Facebook',
                            backgroundColor: AppColors.primaryTextColor,
                            textColor: Colors.white,
                            icon: const Icon(
                              Icons.facebook_outlined,
                              color: Colors.white,
                              size: 18,
                            ),
                          ),
                        ),
                        const SizedBox(width: 10),
                        Expanded(
                          child: SocialButton(
                            label: 'Gmail',
                            backgroundColor: Colors.white,
                            textColor: const Color(0xFF1E2D4E),
                            icon: SvgPicture.asset(
                              'assets/images/svg/auth/google.svg',
                              width: 18,
                              height: 18,
                            ),
                          ),
                        ),
                        const SizedBox(width: 10),
                        Expanded(
                          child: SocialButton(
                            label: 'Twitter',
                            backgroundColor: const Color(0xFF29C4F6),
                            textColor: Colors.white,
                            icon: Icon(
                              Icons.share_outlined,
                              color: Colors.white,
                              size: 18,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 28),
                    const AuthTextField(
                      hintText: 'First Name',
                      textInputAction: TextInputAction.next,
                    ),
                    const SizedBox(height: 14),
                    const AuthTextField(
                      hintText: 'Last Name',
                      textInputAction: TextInputAction.next,
                    ),
                    const SizedBox(height: 14),
                    const AuthTextField(
                      hintText: 'Your Email',
                      keyboardType: TextInputType.emailAddress,
                      textInputAction: TextInputAction.next,
                    ),
                    const SizedBox(height: 14),
                    Consumer<SignUpProvider>(
                      builder: (context, provider, _) {
                        return AuthPasswordField(
                          obscure: provider.obscurePassword,
                          onToggle: provider.togglePasswordVisibility,
                        );
                      },
                    ),
                    const SizedBox(height: 24),
                    PrimaryButton(
                      text: 'Sign Up',
                      onPressed: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => ChangeNotifierProvider(
                            create: (_) => SelectLanguageProvider(
                              getLanguagesUseCase: GetLanguages(
                                LanguageRepositoryImpl(),
                              ),
                            ),
                            child: const SelectLanguagePage(),
                          ),
                        ),
                      ),
                      backgroundColor: AppColors.primaryColor,
                      textColor: Colors.white,
                    ),
                    const SizedBox(height: 16),
                    const Text(
                      'By singning up, you agreed with our Services and\nPrivacy Policy',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 14,
                        color: Color(0xFF9AA0B0),
                        height: 1.5,
                      ),
                    ),
                    const SizedBox(height: 24),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'Already have account? ',
                          style: TextStyle(
                            fontSize: 15,
                            color: Color(0xFF9AA0B0),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: const Text(
                            'Log In',
                            style: TextStyle(
                              fontSize: 15,
                              color: Color(0xFFF2637E),
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
