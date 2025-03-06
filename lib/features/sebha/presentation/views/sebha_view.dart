import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:zaker/core/utils/app_text_style.dart';
import 'package:zaker/features/sebha/presentation/manager/cubit/sebha_cubit/sebha_cubit.dart';
import 'package:zaker/features/sebha/presentation/views/widgets/sebha_view_body.dart';

class SebhaView extends StatelessWidget {
  const SebhaView({super.key});
  static String id = 'sebhaView';

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SebhaCubit(),
      child: SafeArea(
        child: Scaffold(
          body: Column(
            spacing: 20,
            children: [
              Center(
                child: Text(
                  'السبحه',
                  style: AppTextStyle.styleMediem20(context),
                ),
              ),
              SebhaViewBody(),
            ],
          ),
        ),
      ),
    );
  }
}
