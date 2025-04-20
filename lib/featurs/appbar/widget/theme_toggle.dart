import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_prtofolio/cubit/cubit/theme_cubit.dart';

class ThemeToggle extends StatelessWidget {
  const ThemeToggle({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = context.watch<ThemeCubit>().state == ThemeMode.dark;

    return Switch(
      value: isDark,
      onChanged: (value) {
        context.read<ThemeCubit>().toggleTheme(value);
      },
    );
  }
}
