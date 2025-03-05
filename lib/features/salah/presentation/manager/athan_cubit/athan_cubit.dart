import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:zaker/features/salah/data/models/prayer_times_model.dart';
import 'package:zaker/features/salah/data/repos/athan_repo_impl.dart';

part 'athan_state.dart';

class AthanCubit extends Cubit<AthanState> {
  AthanCubit() : super(AthanInitial());

  PrayerTimingsModel? prayerTimingsModel;

  getTimePray() async {
    emit(AthanLoading());
    try {
      prayerTimingsModel = await AthanRepoImpl(Dio()).getPrayerTime();

      emit(AthanSuccess());
    } catch (e) {
      log('this is the error in the athan cubit $e');
      emit(Athanfailuer());
    }
  }
}
