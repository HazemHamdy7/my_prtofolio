// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:my_prtofolio/features/home/presentation/my_services/data/service_data.dart';
// import 'package:my_prtofolio/features/home/presentation/my_services/logic/service_state.dart';
// import 'package:my_prtofolio/features/home/presentation/my_services/model/service_model.dart';

// class ServicesCubit extends Cubit<ServicesState> {
//   ServicesCubit() : super(const ServicesState.initial());

//   Future<void> fetchServices() async {
//     try {
//       emit(const ServicesState.loading());

//       final querySnapshot =
//           await FirebaseFirestore.instance.collection('services').get();

//       if (querySnapshot.docs.isEmpty) {
//         emit(ServicesState.success(defaultServices));
//         return;
//       }

//       final services = <ServiceModel>[];
//       for (final doc in querySnapshot.docs) {
//         final service = ServiceModel.fromJson(doc.data());
//         services.add(service);
//       }

//       emit(ServicesState.success(services));
//     } catch (e) {
//       print('Error fetching services: ${e.toString()}');
//       emit(ServicesState.failure('Failed to load services'));
//     }
//   }
// }

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_prtofolio/features/home/presentation/my_services/data/service_data.dart';
import 'package:my_prtofolio/features/home/presentation/my_services/logic/service_state.dart';

class ServicesCubit extends Cubit<ServicesState> {
  ServicesCubit() : super(const ServicesState.initial());

  Future<void> fetchServices() async {
    try {
      emit(const ServicesState.loading());

      // استخدام البيانات الافتراضية مباشرة
      final services = defaultServices;

      emit(ServicesState.success(services));
    } catch (e) {
      print('Error fetching services: ${e.toString()}');
      emit(ServicesState.failure('Failed to load services'));
    }
  }
}
