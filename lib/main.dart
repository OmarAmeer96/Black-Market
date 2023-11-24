import 'package:black_market/Core/manager/language_cubit/language_cubit.dart';
import 'package:black_market/Core/utils/app_router.dart';
import 'package:black_market/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LanguageCubit(),
      child: BlocBuilder<LanguageCubit, LanguageState>(
        builder: (context, state) {
          return MaterialApp.router(
            localizationsDelegates: AppLocalizations.localizationsDelegates,
            supportedLocales: AppLocalizations.supportedLocales,
            locale: const Locale("ar"),
            // Old One:
            // context.read<LanguageCubit>().local,
            title: 'Black Market App',
            routerConfig: AppRouter.router,
            theme: ThemeData.dark().copyWith(
              scaffoldBackgroundColor: backGroundColor,
            ),
            debugShowCheckedModeBanner: false,
          );
        },
      ),
    );
  }
}
