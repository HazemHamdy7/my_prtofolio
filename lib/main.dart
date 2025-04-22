import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:my_prtofolio/cubit/cubit/theme_cubit.dart';
import 'package:my_prtofolio/features/home/presentation/appbar/cubit/toogle_language_cubit.dart';
 import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:my_prtofolio/shared/routes/app_route.dart';
import 'package:my_prtofolio/shared/style/app_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => LocaleCubit()),
        BlocProvider(create: (_) => ThemeCubit()),
      ],
      child: BlocBuilder<ThemeCubit, ThemeMode>(
        builder: (context, themeMode) {
          return BlocBuilder<LocaleCubit, Locale>(
            builder: (context, locale) {
              return MaterialApp.router(
                locale: locale,
                localizationsDelegates: const [
                  AppLocalizations.delegate,
                  GlobalMaterialLocalizations.delegate,
                  GlobalWidgetsLocalizations.delegate,
                  GlobalCupertinoLocalizations.delegate,
                ],
                supportedLocales: const [Locale('en'), Locale('ar')],

                theme: AppTheme.light,
                darkTheme: AppTheme.dark,
                themeMode: themeMode, //
                debugShowCheckedModeBanner: false,
                routerConfig: AppRoute.router,
              );
            },
          );
        },
      ),
    );
  }
}
