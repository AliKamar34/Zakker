import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:zaker/core/widgets/custom_elevated_button.dart';
import 'package:zaker/features/sebha/presentation/manager/cubit/sebha_cubit/sebha_cubit.dart';
import 'package:zaker/features/sebha/presentation/views/widgets/circule_percent.dart';
import 'package:zaker/features/sebha/presentation/views/widgets/numbers_buttons_section.dart';
import 'package:zaker/features/sebha/presentation/views/widgets/text_buttons_section.dart';

class SebhaViewBody extends StatelessWidget {
  const SebhaViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    String tasbeha = 'السبحه ';
    int noOfTasbeeeh = 33;
    int numberOfTasbeeh = 0;
    return BlocConsumer<SebhaCubit, SebhaState>(
      listener: (context, state) {
        if (state is TakberSuccess) {
          tasbeha = 'الله اكبر';
        } else if (state is TasbehSuccess) {
          tasbeha = 'سبحان الله';
        } else if (state is ElhamdSuccess) {
          tasbeha = 'الحمد لله';
        } else if (state is SebhaFailuer) {
          tasbeha = 'حاول مره تانيه';
        } else if (state is Tasbeeh33Success) {
          noOfTasbeeeh = 33;
        } else if (state is Tasbeeh100Success) {
          noOfTasbeeeh = 100;
        } else if (state is Tasbeeh1000Success) {
          noOfTasbeeeh = 1000;
        }
      },
      builder: (context, state) {
        return Column(
          spacing: 20,
          children: [
            Column(
              spacing: 15,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 60, right: 60),
                  child: NumbersButtonsSection(),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextButtonsSection(),
                ),
              ],
            ),
            const SizedBox(height: 30),
            CirculePercent(
              numberOfTasbeeh: numberOfTasbeeh,
              noOfTasbeeeh: noOfTasbeeeh,
              tasbeha: tasbeha,
            ),
            CustomElevatedButton(
              primaryColor: true,
              number: tasbeha,
              onPressed: () {
                numberOfTasbeeh++;
                if (numberOfTasbeeh == noOfTasbeeeh) {
                  numberOfTasbeeh = 0;
                }
                BlocProvider.of<SebhaCubit>(
                  context,
                ).increasmentOfTasbeeh(numberOfTasbeeh);
              },
            ),
          ],
        );
      },
    );
  }
}
