import 'package:flutter/material.dart';
import 'package:zaker/core/utils/app_text_style.dart';
import 'package:zaker/features/doaa/presentation/view/widgets/doaa_view_body.dart';

class DoaaView extends StatelessWidget {
  const DoaaView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          spacing: 30,
          children: [
            Center(
              child: Text('ادعيه', style: AppTextStyle.styleMediem20(context)),
            ),
            DoaaViewBody(),
          ],
        ),
      ),
    );
  }
}
