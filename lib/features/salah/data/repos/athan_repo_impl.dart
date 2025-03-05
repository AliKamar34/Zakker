import 'package:dio/dio.dart';
import 'package:zaker/features/salah/data/models/prayer_times_model.dart';
import 'package:zaker/features/salah/data/repos/athan_repo.dart';

class AthanRepoImpl extends AthanRepo {
  final Dio dio;

  AthanRepoImpl(this.dio);
  @override
  Future<PrayerTimingsModel> getPrayerTime() async {
    try {
      Response response = await dio.get(
        'https://api.aladhan.com/v1/timingsByCity?city=mansoura&country=egypt&method=5',
      );

      PrayerTimingsModel prayerTimingsModel = PrayerTimingsModel.fromJson(
        response.data,
      );

      return prayerTimingsModel;
    } on DioException catch (e) {
      final String errorMessage = e.toString();

      throw Exception(errorMessage);
    } on Exception catch (e) {
      throw Exception(e.toString());
    }
  }
}
