import 'package:flutter/material.dart';
import 'package:zaker/core/utils/app_text_style.dart';
import 'package:zaker/features/salah/presentation/views/widgets/salah_view_body.dart';

class SalahView extends StatelessWidget {
  const SalahView({super.key});
  static String id = 'salahView';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              Center(
                child: Text(
                  'مواقيت الصلاه',
                  style: AppTextStyle.styleMediem20(context),
                ),
              ),
              SalahViewBody(),
            ],
          ),
        ),
      ),
    );
  }
}
