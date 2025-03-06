import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_islamic_icons/flutter_islamic_icons.dart';
import 'package:zaker/core/helper/time_formater.dart';
import 'package:zaker/core/utils/app_text_style.dart';
import 'package:zaker/core/widgets/custom_container.dart';
import 'package:zaker/features/home/presentation/manager/next_pray_cubit/next_pray_cubit.dart';

class NextPrayContainer extends StatelessWidget {
  const NextPrayContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 40),
        child: BlocBuilder<NextPrayCubit, NextPrayState>(
          builder: (context, state) {
            if (state is NextPraySuccess) {
              return ListTile(
                leading: Icon(
                  FlutterIslamicIcons.sajadah,
                  size: 60,
                  color: Colors.white,
                ),
                title: Text(
                  'الصلاه القادمه  ${state.nextPrayModel.name}',
                  style: AppTextStyle.styleRegular18(
                    context,
                  ).copyWith(color: Colors.white),
                ),
                subtitle: Text(
                  'يؤذن في الساعه ${formatTimeIntoString(state.nextPrayModel.time)}',
                  style: AppTextStyle.styleRegular14(
                    context,
                  ).copyWith(color: Colors.white),
                ),
              );
            } else if (state is NextPrayLoading) {
              return Center(child: CircularProgressIndicator());
            } else {
              return Center(
                child: Text(
                  'الرجاء التحقق من الاتصال بالانترنت والمحاوله مجددا',
                  style: AppTextStyle.styleRegular14(
                    context,
                  ).copyWith(color: Colors.white),
                ),
              );
            }
          },
        ),
      ),
    );
  }
}
