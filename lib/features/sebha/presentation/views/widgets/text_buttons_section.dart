import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:zaker/core/widgets/custom_elevated_button.dart';
import 'package:zaker/features/sebha/presentation/manager/cubit/sebha_cubit/sebha_cubit.dart';

class TextButtonsSection extends StatelessWidget {
  const TextButtonsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 5,
      children: [
        CustomElevatedButton(
          number: 'الله اكبر',
          onPressed: () {
            BlocProvider.of<SebhaCubit>(context).changeTasbeha('الله اكبر');
          },
        ),
        CustomElevatedButton(
          number: 'الحمد  لله',
          onPressed: () {
            BlocProvider.of<SebhaCubit>(context).changeTasbeha('الحمد  لله');
          },
        ),
        CustomElevatedButton(
          number: 'سبحان الله',
          onPressed: () {
            BlocProvider.of<SebhaCubit>(context).changeTasbeha('سبحان الله');
          },
        ),
      ],
    );
  }
}
