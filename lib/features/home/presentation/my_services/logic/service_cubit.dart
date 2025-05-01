import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_prtofolio/features/home/presentation/my_services/data/service_data.dart';
import 'package:my_prtofolio/features/home/presentation/my_services/logic/service_state.dart';
 class ServicesCubit extends Cubit<ServicesState> {
  ServicesCubit() : super(const ServicesState.initial());

  void fetchServices() async {
    emit(const ServicesState.loading());
    await Future.delayed(const Duration(milliseconds: 800)); // Simulate delay

    try {
      emit(ServicesState.success(servicesData));
    } catch (e) {
      emit(const ServicesState.failure("Failed to load services"));
    }
  }
}