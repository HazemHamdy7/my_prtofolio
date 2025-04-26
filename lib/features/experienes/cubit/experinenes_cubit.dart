import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_prtofolio/features/experienes/cubit/experinenes_state.dart';
import 'package:my_prtofolio/features/experienes/model/experiences.dart';

class ExperinenesCubit extends Cubit<ExperinenesState> {
  ExperinenesCubit() : super(const ExperinenesState.initial());

  Future<void> fetchExperiences() async {
    try {
      emit(const ExperinenesState.loading());

      final querySnapshot =
          await FirebaseFirestore.instance.collection('experiences').get();

      final experiences =
          querySnapshot.docs
              .map((doc) => Experiences.fromJson(doc.data()))
              .toList();

      emit(ExperinenesState.loaded(experiences: experiences));
    } catch (e) {
      emit(ExperinenesState.error(message: e.toString()));
    }
  }
}
