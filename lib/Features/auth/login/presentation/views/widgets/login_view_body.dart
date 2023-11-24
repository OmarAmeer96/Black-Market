import 'package:black_market/Core/utils/styles.dart';
import 'package:black_market/Core/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 24, left: 24, right: 24),
      child: Column(
        children: [
          CustomAppBar(
            onTap: () {
              // context.read<LanguageCubit>().changeLanguage();
            },
          ),
          Text(
            "تسجيل الدخول\nإلى حسابك",
            textAlign: TextAlign.center,
            style: Styles.almaraiRegular30.copyWith(letterSpacing: 1),
          ),
        ],
      ),
    );
  }
}
