import 'package:flutter/material.dart';
import 'package:zaker/core/utils/app_colors.dart';
import 'package:quran_library/quran_library.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return QuraanView();
    //  Container(
    //   decoration: BoxDecoration(
    //     color: AppColors.primaryColor,
    //     borderRadius: BorderRadius.circular(20),
    //   ),
    //   child: ListTile(title: Row(children: [Text('Last Read')])),
    // );
  }
}

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
