import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:zaker/core/utils/app_colors.dart';

class CirculePercent extends StatelessWidget {
  const CirculePercent({
    super.key,
    required this.numberOfTasbeeh,
    required this.noOfTasbeeeh,
    required this.tasbeha,
  });

  final int numberOfTasbeeh;
  final int noOfTasbeeeh;
  final String tasbeha;

  @override
  Widget build(BuildContext context) {
    return CircularPercentIndicator(
      radius: 70.0,
      lineWidth: 8.0,
      animation: true,
      percent: (numberOfTasbeeh / noOfTasbeeeh),
      center: Text(tasbeha),
      footer: SizedBox(
        height: 50,
        child: Center(
          child: Text(
            '$numberOfTasbeeh',
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              // fontSize: 17.0,
            ),
          ),
        ),
      ),
      circularStrokeCap: CircularStrokeCap.round,
      progressColor: AppColors.primaryColor,
      backgroundColor: AppColors.primaryColor.withAlpha(40),
    );
  }
}
