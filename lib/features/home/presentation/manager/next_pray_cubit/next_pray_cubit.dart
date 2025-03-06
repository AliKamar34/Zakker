import 'dart:async';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:zaker/features/home/data/models/next_pray_model.dart';
import 'package:zaker/features/home/data/repos/home_repo.dart';
import 'package:zaker/features/salah/presentation/manager/athan_cubit/athan_cubit.dart';

part 'next_pray_state.dart';

class NextPrayCubit extends Cubit<NextPrayState> {
  NextPrayCubit(this.homeRepo, this.context) : super(NextPrayInitial());
  final HomeRepo homeRepo;
  final BuildContext context;
  void waitForAthanDataAndGetNextPray(BuildContext context) {
    final athanCubit = BlocProvider.of<AthanCubit>(context);

    if (athanCubit.prayerTimingsModel != null) {
      getNextPray();
    } else {
      StreamSubscription? subscription;
      subscription = athanCubit.stream.listen((state) {
        if (state is AthanSuccess) {
          getNextPray();
          subscription?.cancel(); // أوقف الاستماع بعد الحصول على البيانات
        }
      });
    }
  }

  getNextPray() async {
    emit(NextPrayLoading());
    try {
      NextPrayModel nextPrayModel = await homeRepo.getNextPray(
        DateTime.now(),
        BlocProvider.of<AthanCubit>(context).prayerTimingsModel!,
      );
      emit(NextPraySuccess(nextPrayModel));
    } catch (e) {
      log(e.toString());
      emit(NextPrayFailuer(e.toString()));
    }
  }
}
