import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_prtofolio/features/home/presentation/my_services/logic/service_state.dart';
import 'package:my_prtofolio/features/home/presentation/my_services/model/service_model.dart';

class ServicesCubit extends Cubit<ServicesState> {
  ServicesCubit() : super(const ServicesState.initial());

  void fetchServices() async {
    try {
      emit(const ServicesState.loading());

      // استعلام البيانات من Firestore
      final querySnapshot =
          await FirebaseFirestore.instance.collection('services').get();

      print(
        'Docs fetched: ${querySnapshot.docs.length}',
      ); // طباعة عدد الوثائق اللي اتسحبت
      final services =
          querySnapshot.docs
              .map(
                (doc) => ServiceModel.fromJson(doc.data()),
              ) // تحويل كل وثيقة إلى ServiceModel
              .toList();

      emit(ServicesState.success(services)); // إصدار حالة Success مع البيانات
      print('Fetched services: $services'); // طباعة البيانات المجمعة
    } catch (e) {
      emit(
        ServicesState.failure(e.toString()),
      ); // إصدار حالة Failure في حالة حدوث خطأ
      print('Error fetching services: $e'); // طباعة الخطأ
    }
  }
}
