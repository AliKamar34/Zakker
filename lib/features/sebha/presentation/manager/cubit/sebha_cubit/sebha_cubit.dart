import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';

part 'sebha_state.dart';

class SebhaCubit extends Cubit<SebhaState> {
  SebhaCubit() : super(SebhaInitial());

  // String? tasbeha;
  changeTasbeha(String sebha) {
    if (sebha == 'الله اكبر') {
      emit(TakberSuccess());
    } else if (sebha == 'الحمد  لله') {
      emit(ElhamdSuccess());
    } else if (sebha == 'سبحان الله') {
      emit(TasbehSuccess());
    } else {
      emit(SebhaFailuer());
    }
  }

  changeNumberOfTasbeha(int noOfTasbeha) {
    if (noOfTasbeha == 33) {
      emit(Tasbeeh33Success());
    } else if (noOfTasbeha == 100) {
      emit(Tasbeeh100Success());
    } else if (noOfTasbeha == 1000) {
      emit(Tasbeeh1000Success());
    } else {
      emit(SebhaFailuer());
    }
  }

  increasmentOfTasbeeh(int noOfTasbeeh) {
    try {
      noOfTasbeeh++;
      log(noOfTasbeeh.toString());
      emit(SebhaIncreasmentSuccess());
      return noOfTasbeeh;
    } catch (e) {
      emit(SebhaFailuer());
    }
  }
}
