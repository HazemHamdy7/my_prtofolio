import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:my_prtofolio/cubit/cubit/theme_cubit.dart';
import 'package:my_prtofolio/l10n/app_localizations.dart';
import 'package:my_prtofolio/shared/appbar/cubit/toogle_language_cubit.dart';
import 'package:my_prtofolio/firebase_options.dart';
import 'package:my_prtofolio/shared/routes/app_route.dart';
import 'package:my_prtofolio/shared/style/app_theme.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}
// ?flutter gen-l10n

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

// flutter run --release -target=lib/main_production.dart --flavor=production
// flutter run --debug -target=lib/main_production.dart --flavor=production

//================================================//

// flutter run --release -target=lib/main_development.dart --flavor=development
// flutter run --debug -target=lib/main_development.dart --flavor=development
