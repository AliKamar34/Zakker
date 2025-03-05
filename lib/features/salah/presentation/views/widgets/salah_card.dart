import 'package:flutter/material.dart';
import 'package:zaker/core/utils/app_text_style.dart';
import 'package:zaker/core/widgets/custom_container.dart';

class CustomSalaCard extends StatelessWidget {
  const CustomSalaCard({
    super.key,
    required this.day,
    required this.date,
    required this.hijriDay,
    required this.hijriMonth,
    required this.hijriYear,
  });
  final String day;
  final String date;
  final String hijriDay;
  final String hijriMonth;
  final String hijriYear;
  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        child: Column(
          children: [
            FittedBox(
              fit: BoxFit.scaleDown,
              child: Row(
                children: [
                  const SizedBox(width: 20),
                  Text(
                    date,
                    style: AppTextStyle.styleRegular16(
                      context,
                    ).copyWith(color: Colors.white),
                  ),
                  const SizedBox(width: 120),
                  Text(
                    ' $hijriDay ',
                    style: AppTextStyle.styleRegular16(
                      context,
                    ).copyWith(color: Colors.white),
                  ),
                  Text(
                    ' $hijriMonth ',
                    style: AppTextStyle.styleRegular16(
                      context,
                    ).copyWith(color: Colors.white),
                  ),
                  Text(
                    ' $hijriYear ',
                    style: AppTextStyle.styleRegular16(
                      context,
                    ).copyWith(color: Colors.white),
                  ),
                ],
              ),
            ),
            Text(
              day,
              style: AppTextStyle.styleMediem20(
                context,
              ).copyWith(color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
