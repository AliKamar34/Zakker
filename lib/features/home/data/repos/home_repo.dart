import 'package:zaker/features/home/data/models/next_pray_model.dart';
import 'package:zaker/features/salah/data/models/prayer_times_model.dart';

abstract class HomeRepo {
  Future<NextPrayModel> getNextPray(
    DateTime timeNow,
    PrayerTimingsModel prayesTime,
  );
}
