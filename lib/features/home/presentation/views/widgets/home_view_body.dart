import 'package:flutter/material.dart';
import 'package:flutter_islamic_icons/flutter_islamic_icons.dart';
import 'package:go_router/go_router.dart';
import 'package:zaker/core/utils/app_routes.dart';
import 'package:zaker/core/widgets/custom_container.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 15,
        children: [
          Center(child: Text('ذَكِّرْ', style: TextStyle(fontSize: 26))),
          Text('السلام عليكم ', style: TextStyle(fontSize: 20)),
          CustomContainer(
            child: ListTile(
              leading: Icon(
                FlutterIslamicIcons.sajadah,
                size: 60,
                color: Colors.white,
              ),
              title: Text(
                'المصحف الشريف',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          InkWell(
            onTap: () {
              GoRouter.of(context).push(AppRoutes.quraanView);
            },
            child: CustomContainer(
              child: ListTile(
                leading: Icon(
                  FlutterIslamicIcons.quran2,
                  size: 60,
                  color: Colors.white,
                ),
                title: Text(
                  'المصحف الشريف',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),
          InkWell(
            onTap: () {},
            child: CustomContainer(
              child: ListTile(
                leading: Icon(
                  FlutterIslamicIcons.prayer,
                  size: 60,
                  color: Colors.white,
                ),
                title: Text(
                  'اذكار عشوائيه  ',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
