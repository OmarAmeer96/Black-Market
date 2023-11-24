import 'package:black_market/Core/utils/assets.dart';
import 'package:black_market/Core/utils/styles.dart';
import 'package:black_market/Core/widgets/custom_app_bar.dart';
import 'package:black_market/Core/widgets/custom_text_field.dart';
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
          const SizedBox(
            height: 50,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(
                width: 16,
              ),
              Text(
                "البريد الإلكتروني",
                style: Styles.almaraiRegular30
                    .copyWith(fontSize: 16, letterSpacing: 1),
              ),
            ],
          ),
          const SizedBox(
            height: 12,
          ),
          const CustomTextField(
            labelText: "أدخل البريد الإلكتروني",
            hintText: '',
            icon: AssetsData.emailIcon,
          ),
        ],
      ),
    );
  }
}
