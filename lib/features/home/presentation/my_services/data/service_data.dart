import 'package:my_prtofolio/constants/assets.dart';
import 'package:my_prtofolio/features/home/presentation/my_services/model/service_model.dart';

final List<ServiceModel> defaultServices = [
  ServiceModel(
    title: {
      'en': 'Mobile App Development',
      'ar': 'تطوير تطبيقات الهاتف المحمول',
    },
    description: {
      'en':
          'Create professional and high-performance mobile applications for iOS and Android using Flutter',
      'ar':
          'إنشاء تطبيقات جوال احترافية وعالية الأداء لـ iOS و Android باستخدام Flutter',
    },
    images: Assets.imagesApps,
    url: 'https://mostaql.com/portfolio/3348275-sport-app',
  ),
  ServiceModel(
    title: {'en': 'Professional CV Website', 'ar': 'موقع CV احترافي'},
    description: {
      'en':
          'Build a stunning professional portfolio and CV website to showcase your skills and projects',
      'ar': 'بناء موقع بورتفوليو و CV احترافي لعرض مهاراتك ومشاريعك',
    },
    images: Assets.imagesCv,
    url:
        'https://kafiil.com/service/202822-%D8%AA%D8%B5%D9%85%D9%8A%D9%85-%D8%B3%D9%8A%D8%B1%D8%A9-%D8%B0%D8%A7%D8%AA%D9%8A%D8%A9-%D8%A7%D8%AD%D8%AA%D8%B1%D8%A7%D9%81%D9%8A%D8%A9-%D9%85%D8%AA%D9%88%D8%A7%D9%81%D9%82%D8%A9-%D9%85%D8%B9-ats-%D9%84%D8%B2%D9%8A%D8%A7%D8%AF%D8%A9-%D9%81%D8%B1',
  ),
  ServiceModel(
    title: {'en': 'App Store Deployment', 'ar': 'رفع التطبيقات على الاستور'},
    description: {
      'en':
          'Complete guidance and support for publishing your app on Google Play Store and Apple App Store',
      'ar':
          'توجيهات كاملة ودعم شامل لنشر تطبيقك على متجر Google Play و App Store',
    },
    images: Assets.imagesUpload,
    url:
        'https://mostaql.com/portfolio/3354734-%D8%B1%D9%81%D8%B9-%D9%88%D9%86%D8%B4%D8%B1-%D8%AA%D8%B7%D8%A8%D9%8A%D9%82-flutter-%D8%B9%D9%84%D9%89-google-play-store',
  ),
];
