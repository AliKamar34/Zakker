import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_islamic_icons/flutter_islamic_icons.dart';
import 'package:go_router/go_router.dart';
import 'package:zaker/core/utils/app_routes.dart';
import 'package:zaker/core/widgets/custom_container.dart';
import 'package:zaker/features/home/data/repos/home_repo_impl.dart';
import 'package:zaker/features/home/presentation/manager/next_pray_cubit/next_pray_cubit.dart';
import 'package:zaker/features/home/presentation/views/widgets/next_pray_container.dart';
import 'package:zaker/features/home/presentation/views/widgets/random_azkar_container.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: 15,
          children: [
            Center(child: Text('ذَكِّرْ', style: TextStyle(fontSize: 26))),
            Text('السلام عليكم ', style: TextStyle(fontSize: 20)),
            BlocProvider(
              create:
                  (context) =>
                      NextPrayCubit(HomeRepoImpl(), context)
                        ..waitForAthanDataAndGetNextPray(context),

              child: NextPrayContainer(),
            ),
            InkWell(
              onTap: () {
                GoRouter.of(context).push(AppRoutes.quraanView);
              },
              child: CustomContainer(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 40,
                  ),
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
            ),
            RandomAzkarContainer(),
          ],
        ),
      ),
    );
  }
}
