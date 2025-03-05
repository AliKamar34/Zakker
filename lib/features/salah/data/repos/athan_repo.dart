import 'package:zaker/features/salah/data/models/prayer_times_model.dart';

abstract class AthanRepo {
  Future<PrayerTimingsModel> getPrayerTime();
}
