import 'package:flutter/material.dart';
import 'package:zaker/core/utils/app_text_style.dart';
import 'package:zaker/core/widgets/custom_container.dart';

class CustomSalaContainer extends StatelessWidget {
  const CustomSalaContainer({
    super.key,
    required this.time,
    required this.salah,
  });
  final String time;
  final String salah;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: CustomContainer(
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                salah,
                style: AppTextStyle.styleRegular18(
                  context,
                ).copyWith(color: Colors.white),
              ),
              Text(
                time,
                style: AppTextStyle.styleRegular18(
                  context,
                ).copyWith(color: Colors.white),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
