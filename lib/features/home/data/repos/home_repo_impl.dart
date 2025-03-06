import 'package:zaker/core/helper/time_formater.dart';
import 'package:zaker/features/home/data/models/next_pray_model.dart';
import 'package:zaker/features/home/data/repos/home_repo.dart';
import 'package:zaker/features/salah/data/models/prayer_times_model.dart';

class HomeRepoImpl extends HomeRepo {
  @override
  Future<NextPrayModel> getNextPray(
    DateTime timeNow,
    PrayerTimingsModel prayesTime,
  ) async {
    if (timeNow.isBefore(parseTimeIntoDateTime(prayesTime.fajr))) {
      return NextPrayModel(name: 'الفجر', time: prayesTime.fajr);
    } else if (timeNow.isBefore(parseTimeIntoDateTime(prayesTime.dhuhr))) {
      return NextPrayModel(name: 'الظهر', time: prayesTime.dhuhr);
    } else if (timeNow.isBefore(parseTimeIntoDateTime(prayesTime.asr))) {
      return NextPrayModel(name: 'العصر', time: prayesTime.asr);
    } else if (timeNow.isBefore(parseTimeIntoDateTime(prayesTime.maghrib))) {
      return NextPrayModel(name: 'المغرب', time: prayesTime.maghrib);
    } else if (timeNow.isBefore(parseTimeIntoDateTime(prayesTime.isha))) {
      return NextPrayModel(name: 'العشاء', time: prayesTime.isha);
    } else {
      return NextPrayModel(name: 'errrrr', time: 'eee');
    }
  }
}
