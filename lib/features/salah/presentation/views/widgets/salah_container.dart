import 'package:flutter/material.dart';
import 'package:zaker/core/utils/app_text_style.dart';
import 'package:zaker/core/widgets/custom_container.dart';

class CustomSalaContainer extends StatelessWidget {
  const CustomSalaContainer({
    super.key,
    required this.time,
    required this.salah,
    required this.sonah,
  });
  final String time;
  final String salah;
  final String sonah;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: CustomContainer(
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: ListTile(
            title: Text(
              salah,
              style: AppTextStyle.styleRegular18(
                context,
              ).copyWith(color: Colors.white),
            ),
            subtitle: Text(
              'سنته  :  $sonah',
              style: AppTextStyle.styleRegular14(
                context,
              ).copyWith(color: Colors.white),
            ),
            trailing: Text(
              time,
              style: AppTextStyle.styleRegular18(
                context,
              ).copyWith(color: Colors.white),
            ),
          ),
          // Row(
          //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //   children: [
          //     Text(
          //       salah,
          //       style: AppTextStyle.styleRegular18(
          //         context,
          //       ).copyWith(color: Colors.white),
          //     ),
          //     Text(
          //       time,
          //       style: AppTextStyle.styleRegular18(
          //         context,
          //       ).copyWith(color: Colors.white),
          //     ),
          //   ],
          // ),
        ),
      ),
    );
  }
}
