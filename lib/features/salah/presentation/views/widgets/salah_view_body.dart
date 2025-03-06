import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:zaker/core/helper/time_formater.dart';
import 'package:zaker/features/salah/presentation/manager/athan_cubit/athan_cubit.dart';
import 'package:zaker/features/salah/presentation/views/widgets/salah_card.dart';
import 'package:zaker/features/salah/presentation/views/widgets/salah_container.dart';

class SalahViewBody extends StatelessWidget {
  const SalahViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AthanCubit, AthanState>(
      builder: (context, state) {
        String fajrTime = '00:00';
        String sunriseTime = '00:00';
        String dhuhrTime = '00:00';
        String asrTime = '00:00';
        String maghribTime = '00:00';
        String ishaTime = '00:00';

        if (state is AthanLoading) {
          fajrTime = 'loading';
          sunriseTime = 'loading';
          dhuhrTime = 'loading';
          asrTime = 'loading';
          maghribTime = 'loading';
          ishaTime = 'loading';
        } else if (state is AthanSuccess) {
          fajrTime =
              (BlocProvider.of<AthanCubit>(context).prayerTimingsModel?.fajr ??
                  'success');
          sunriseTime =
              (BlocProvider.of<AthanCubit>(
                    context,
                  ).prayerTimingsModel?.sunrise ??
                  'success');
          dhuhrTime =
              (BlocProvider.of<AthanCubit>(context).prayerTimingsModel?.dhuhr ??
                  'success');
          asrTime =
              (BlocProvider.of<AthanCubit>(context).prayerTimingsModel?.asr ??
                  'success');
          maghribTime =
              (BlocProvider.of<AthanCubit>(
                    context,
                  ).prayerTimingsModel?.maghrib ??
                  'success');
          ishaTime =
              (BlocProvider.of<AthanCubit>(context).prayerTimingsModel?.isha ??
                  'success');
        } else if (state is Athanfailuer) {
          fajrTime = 'failuer';
          sunriseTime = 'failuer';
          dhuhrTime = 'failuer';
          asrTime = 'failuer';
          maghribTime = 'failuer';
          ishaTime = 'failuer';
        } else {
          BlocProvider.of<AthanCubit>(context).getTimePray();
        }

        return Expanded(
          child: ListView(
            children: [
              SizedBox(height: 30),
              CustomSalaCard(
                day:
                    BlocProvider.of<AthanCubit>(
                      context,
                    ).prayerTimingsModel?.day ??
                    'السبت',
                date:
                    BlocProvider.of<AthanCubit>(
                      context,
                    ).prayerTimingsModel?.date ??
                    '1/6/2003',
                hijriDay:
                    BlocProvider.of<AthanCubit>(
                      context,
                    ).prayerTimingsModel?.hijriDay ??
                    '1',
                hijriMonth:
                    BlocProvider.of<AthanCubit>(
                      context,
                    ).prayerTimingsModel?.hijriMonth ??
                    '6',
                hijriYear:
                    BlocProvider.of<AthanCubit>(
                      context,
                    ).prayerTimingsModel?.hijriYear ??
                    '1435',
              ),
              SizedBox(height: 30),
              CustomSalaContainer(
                time: formatTimeIntoString(fajrTime),
                salah: 'الفجر',
                sonah: 'ركعتان  قبل  الصلاة',
              ),
              CustomSalaContainer(
                time: formatTimeIntoString(sunriseTime),
                salah: 'الشروق',
                sonah: ' هي  سنه',
              ),
              CustomSalaContainer(
                time: formatTimeIntoString(dhuhrTime),
                salah: 'الظهر',
                sonah: 'أربع  قبل  وركعتان  بعده',
              ),
              CustomSalaContainer(
                time: formatTimeIntoString(asrTime),
                salah: 'العصر',
                sonah: ' ليس  له  سنه',
              ),
              CustomSalaContainer(
                time: formatTimeIntoString(maghribTime),
                salah: 'المغرب',
                sonah: 'ركعتان  بعد  الصلاة',
              ),
              CustomSalaContainer(
                time: formatTimeIntoString(ishaTime),
                salah: 'العشاء',
                sonah: 'ركعتان  بعد  الصلاة',
              ),
            ],
          ),
        );
      },
    );
  }
}
