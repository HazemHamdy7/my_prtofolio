import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_ar.dart';
import 'app_localizations_en.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'l10n/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale)
    : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
        delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('ar'),
    Locale('en'),
  ];

  /// No description provided for @home.
  ///
  /// In en, this message translates to:
  /// **'Home'**
  String get home;

  /// No description provided for @about_me.
  ///
  /// In en, this message translates to:
  /// **'About Me'**
  String get about_me;

  /// No description provided for @courses.
  ///
  /// In en, this message translates to:
  /// **'Courses'**
  String get courses;

  /// No description provided for @blog.
  ///
  /// In en, this message translates to:
  /// **'Blog'**
  String get blog;

  /// No description provided for @contact_me.
  ///
  /// In en, this message translates to:
  /// **'Contact Me'**
  String get contact_me;

  /// No description provided for @ahmed_hamdy.
  ///
  /// In en, this message translates to:
  /// **'Ahmed Hamdy'**
  String get ahmed_hamdy;

  /// No description provided for @mobile_developer.
  ///
  /// In en, this message translates to:
  /// **' Mobile Developer'**
  String get mobile_developer;

  /// No description provided for @ahmed_hamdy_desc.
  ///
  /// In en, this message translates to:
  /// **'Flutter Developer, Dart, Firebase, and Web Development.'**
  String get ahmed_hamdy_desc;

  /// No description provided for @ahmed_hamdy_desc_2.
  ///
  /// In en, this message translates to:
  /// **'I am a Flutter developer with experience in Dart, Firebase, and web development. I have worked on various projects and have a strong understanding of mobile app development.'**
  String get ahmed_hamdy_desc_2;

  /// No description provided for @powred_by_flutter.
  ///
  /// In en, this message translates to:
  /// **'Powered by Flutter'**
  String get powred_by_flutter;

  /// No description provided for @courses_subtitle.
  ///
  /// In en, this message translates to:
  /// **'Courses I have created and published on Udemy'**
  String get courses_subtitle;

  /// No description provided for @experienes.
  ///
  /// In en, this message translates to:
  /// **'Experiences'**
  String get experienes;

  /// No description provided for @experienes_subtitle.
  ///
  /// In en, this message translates to:
  /// **'My experiences in the field of mobile development and programming.'**
  String get experienes_subtitle;

  /// No description provided for @testimonials.
  ///
  /// In en, this message translates to:
  /// **'Testimonials'**
  String get testimonials;

  /// No description provided for @testimonials_subtitle.
  ///
  /// In en, this message translates to:
  /// **'Ahmed is a great instructor. He explains everything clearly and is always available to help.'**
  String get testimonials_subtitle;

  /// No description provided for @about.
  ///
  /// In en, this message translates to:
  /// **'About'**
  String get about;

  /// No description provided for @me.
  ///
  /// In en, this message translates to:
  /// **' Me'**
  String get me;

  /// No description provided for @my.
  ///
  /// In en, this message translates to:
  /// **'My'**
  String get my;

  /// No description provided for @services.
  ///
  /// In en, this message translates to:
  /// **'Services'**
  String get services;

  /// No description provided for @about_me_subtitle.
  ///
  /// In en, this message translates to:
  /// **'I am a Flutter developer with experience in Dart, Firebase, and web development. \nI have worked on various projects and have a strong understanding of mobile app development. \nI am passionate about learning new technologies and improving my skills. \nI am always looking for new challenges and opportunities to grow as a developer.  \nWork for Premium Card Finance Services From (10-2020) - Card Operation specialist Data Review and transfer to department operation system as analyst system form (05-2023) to Now. I am a freelance mobile application developer. (Flutter Developer) And backend developer (Django framework)\n. I work as an accountant from Future Import and Export Company  I was working in a hotel in Sharm EL \nsheikh as an Accountant for two months.  I worked in Shaheen center for 6 months\n.  I was a high school assistant. I oversaw office accountant for 5 years.  '**
  String get about_me_subtitle;

  /// No description provided for @about_me_subtitle2.
  ///
  /// In en, this message translates to:
  /// **'I am a Flutter developer with experience in Dart, Firebase, and web development.I have worked on various projects and have a strong understanding of mobile app development. I am passionate about learning new technologies and improving my skills. I am always looking for new challenges and opportunities to grow as a developer. Work for Premium Card Finance Services From (10-2020) - Card Operation specialist Data Review and transfer to department operation system as analyst system form (05-2023) to Now. I am a freelance mobile application developer. (Flutter Developer) And backend developer (Django framework). I work as an accountant from Future Import and Export Company  I was working in a hotel in Sharm EL sheikh as an Accountant for two months.  I worked in Shaheen center for 6 months.  I was a high school assistant. I oversaw office accountant for 5 years.  '**
  String get about_me_subtitle2;
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) =>
      <String>['ar', 'en'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {
  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'ar':
      return AppLocalizationsAr();
    case 'en':
      return AppLocalizationsEn();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.',
  );
}
