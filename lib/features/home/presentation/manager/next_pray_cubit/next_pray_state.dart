part of 'next_pray_cubit.dart';

sealed class NextPrayState {}

final class NextPrayInitial extends NextPrayState {}

final class NextPrayLoading extends NextPrayState {}

final class NextPraySuccess extends NextPrayState {
  final NextPrayModel nextPrayModel;
  NextPraySuccess(this.nextPrayModel);
}

final class NextPrayFailuer extends NextPrayState {
  final String message;
  NextPrayFailuer(this.message);
}
