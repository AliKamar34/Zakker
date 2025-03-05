import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:zaker/core/widgets/custom_elevated_button.dart';
import 'package:zaker/features/sebha/presentation/manager/cubit/sebha_cubit/sebha_cubit.dart';

class NumbersButtonsSection extends StatelessWidget {
  const NumbersButtonsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 5,
      children: [
        CustomElevatedButton(
          number: '33',
          onPressed: () {
            BlocProvider.of<SebhaCubit>(context).changeNumberOfTasbeha(33);
          },
        ),
        CustomElevatedButton(
          number: '100',
          onPressed: () {
            BlocProvider.of<SebhaCubit>(context).changeNumberOfTasbeha(100);
          },
        ),
        CustomElevatedButton(
          number: '1000',
          onPressed: () {
            BlocProvider.of<SebhaCubit>(context).changeNumberOfTasbeha(1000);
          },
        ),
      ],
    );
  }
}
