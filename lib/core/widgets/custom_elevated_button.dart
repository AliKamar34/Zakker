import 'package:flutter/material.dart';
import 'package:zaker/core/utils/app_colors.dart';
import 'package:zaker/core/utils/app_text_style.dart';

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton({
    super.key,
    required this.number,
    required this.onPressed,
    this.primaryColor,
  });
  final String number;
  final void Function()? onPressed;
  final bool? primaryColor;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        backgroundColor:
            (primaryColor == true)
                ? AppColors.secondaryColor
                : AppColors.primaryColor,
      ),
      child: Padding(
        padding: const EdgeInsets.all(2),
        child: Text(
          number,
          style: AppTextStyle.styleRegular16(
            context,
          ).copyWith(color: Colors.white),
        ),
      ),
    );
  }
}
