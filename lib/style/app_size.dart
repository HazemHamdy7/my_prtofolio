class Insets {
  static double get sm => 4;
  static double get xs => 4;
  static double get med => 12;
  static double get lg => 16;
  static double get xl => 24;
  static double get xxl => 21;
  static double get xxxl => 80;
  static const double maxWidth = 1280;
}

abstract class AppInsets {
  double get padding;
  double get appBarHeight;
  double get cardPadding;
  double get gap;
}

class LagrgeInsets extends AppInsets {
  @override
  double get padding => 80;

  @override
  double get appBarHeight => 75;

  @override
  double get cardPadding => Insets.xl;

  @override
  double get gap => 120;
}

class SmallInsets extends AppInsets {
  @override
  double get padding => 16;

  @override
  double get appBarHeight => 56;

  @override
  double get cardPadding => Insets.lg;

  @override
  double get gap => 72;
}
