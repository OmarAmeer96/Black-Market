import 'package:black_market/Core/manager/language_cubit/language_cubit.dart';
import 'package:black_market/Core/utils/styles.dart';
import 'package:black_market/Core/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

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
              context.read<LanguageCubit>().changeLanguage();
            },
          ),
          Text(
            AppLocalizations.of(context)!.loginTitle,
            textAlign: TextAlign.center,
            style: Styles.almaraiRegular30.copyWith(letterSpacing: 1),
          ),
        ],
      ),
    );
  }
}
