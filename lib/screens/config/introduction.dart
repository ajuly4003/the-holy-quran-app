import 'package:al_quran/configs/app.dart';
import 'package:al_quran/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_overboard/flutter_overboard.dart';

class OnBoardingCard extends StatelessWidget {
  final pages = [
    PageModel(
        color: Colors.grey[700],
        imageAssetPath: StaticAssets.gradLogo,
        title: "The Holy Qur'an",
        body:
            "\"Indeed, It is We who sent down the Qur'an and indeed, We will be its Guardian\"\n",
        doAnimateImage: true),
    PageModel(
        color: const Color(0xff106791),
        imageAssetPath: StaticAssets.ui,
        title: "Fancy & Beautiful Design",
        body:
            "We have worked hard to choose beautiful Colors, Animations and overall an appealing Design for this Beautiful Book",
        doAnimateImage: true),
    // PageModel(
    //     color: const Color(0xff664d7b),
    //     imageAssetPath: StaticAssets.sajda,
    //     title: "Sajda Index",
    //     body:
    //         "Now, with Sajda Index you can directly open any Sajda in Qur'an from the list along with brief information about it.",
    //     doAnimateImage: true),
    PageModel(
        color: const Color(0xff04364f),
        imageAssetPath: StaticAssets.easyNav,
        title: "Easy to Explore",
        body:
            "Open Juzz, Surah or Sajda directly from the index. Long press any Surah or Sajda will show brief information about it.",
        doAnimateImage: true),
    PageModel(
        color: Colors.grey[850],
        imageAssetPath: StaticAssets.drawer3d,
        title: "3D Animated Drawer",
        body:
            "We have introduced a unique 3D Animated drawer. Share your feedback about such ideas.",
        doAnimateImage: true),
  ];

  OnBoardingCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    App.init(context);
    return Scaffold(
      body: OverBoard(
        pages: pages,
        showBullets: true,
        skipCallback: () {
          Navigator.pushNamed(context, '/home');
        },
        finishCallback: () {
          Navigator.pushNamed(context, '/home');
        },
      ),
    );
  }
}
