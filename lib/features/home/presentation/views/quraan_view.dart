import 'package:flutter/material.dart';
import 'package:quran_library/quran.dart';
import 'package:zaker/core/utils/app_colors.dart';

class QuraanView extends StatefulWidget {
  const QuraanView({super.key});

  @override
  State<QuraanView> createState() => _QuraanViewState();
}

class _QuraanViewState extends State<QuraanView> {
  @override
  void initState() {
    QuranLibrary().init();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return QuranLibraryScreen(
      isDark: true,
      showAyahBookmarkedIcon: true,
      ayahIconColor: AppColors.primaryColor,
      backgroundColor: AppColors.scaffoldColor,
      textColor: Colors.black,
    );
  }
}
