import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_prtofolio/features/home/presentation/my_services/logic/service_state.dart';
import 'package:my_prtofolio/features/home/presentation/my_services/model/service_model.dart';

class ServicesCubit extends Cubit<ServicesState> {
  ServicesCubit() : super(const ServicesState.initial());

  void fetchServices() async {
    try {
      emit(const ServicesState.loading());

      final querySnapshot =
          await FirebaseFirestore.instance.collection('services').get();

      final services =
          querySnapshot.docs
              .map((doc) => ServiceModel.fromJson(doc.data()))
              .toList();

      emit(ServicesState.success(services));
    } catch (e) {
      emit(ServicesState.failure(e.toString()));
    }
  }
}
