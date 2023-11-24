import 'package:black_market/Core/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(top: 24, left: 24, right: 24),
      child: Column(
        children: [
          CustomAppBar(),
          SizedBox(
            width: 252,
            child: Text(
              "تسجيل الدخول\nإلى حسابك",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 26,
                fontFamily: '',
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
