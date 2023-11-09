import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tj_app/constants/styles.dart';
import 'package:tj_app/widgets/footer.dart';
import 'package:tj_app/widgets/header.dart';
import 'package:tj_app/widgets/top_navigation.dart';

class Construct extends StatelessWidget {
  Construct({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        centerTitle: true,
        backgroundColor: AppColors.primary,
        title: const Header(),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(height: 80, child: TopNav()),
            LayoutBuilder(
              builder: (context, constraints) {
                return Container(
                  decoration: const BoxDecoration(
                    color: Colors.white,
                  ),
                  width: constraints.maxWidth,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      if (constraints.maxWidth >= 1200) ...[
                        Positioned(
                          left: 0,
                          child: Image.asset('assets/img/back_left.png'),
                        ),
                        Positioned(
                          right: 0,
                          child: Image.asset('assets/img/back_right.png'),
                        ),
                      ],
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 50),
                        child: Align(
                          alignment: Alignment.center,
                          child: constraints.maxWidth >= 1200
                              ? Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: firstContainer,
                                )
                              : Column(
                                  children: firstContainer,
                                ),
                        ),
                      )
                    ],
                  ),
                );
              },
            ),
            LayoutBuilder(
              builder: (context, constraints) {
                return Column(
                  children: [
                    const Padding(
                      padding: EdgeInsets.symmetric(vertical: 70),
                      child: Text(
                        'Құндылықтарымыз',
                        style: AppTextStyles.s32w600cb,
                      ),
                    ),
                    constraints.maxWidth < 1200
                        ? Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              smallContainersGenerator(
                                  'Әлеуметтік жобалар',
                                  'Белсенді тұрғындарының әлеуметтік бастамаларын қолдауға бағытталған пікірлестер командасы.',
                                  'assets/icons/society_projects.png'),
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 35, right: 35, bottom: 50),
                                child: smallContainersGenerator(
                                    'Жастар саясаты',
                                    'Жастардың құқықтарын, заңды мүдделерін қорғау, жастардың жұмысқа орналасуына жәрдемдесу.',
                                    'assets/icons/globus.png'),
                              ),
                              smallContainersGenerator(
                                  'Жастар кәсіпкерлігі',
                                  'Жастар бойындағы шығармашалық қабілетін дамыту, жастар кәсіпкерлігін қолдау, дамыту.',
                                  'assets/icons/head_lamp.png'),
                            ],
                          )
                        : Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              smallContainersGenerator(
                                  'Әлеуметтік жобалар',
                                  'Белсенді тұрғындарының әлеуметтік бастамаларын қолдауға бағытталған пікірлестер командасы.',
                                  'assets/icons/society_projects.png'),
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 35, right: 35, bottom: 50),
                                child: smallContainersGenerator(
                                    'Жастар саясаты',
                                    'Жастардың құқықтарын, заңды мүдделерін қорғау, жастардың жұмысқа орналасуына жәрдемдесу.',
                                    'assets/icons/globus.png'),
                              ),
                              smallContainersGenerator(
                                  'Жастар кәсіпкерлігі',
                                  'Жастар бойындағы шығармашалық қабілетін дамыту, жастар кәсіпкерлігін қолдау, дамыту.',
                                  'assets/icons/head_lamp.png'),
                            ],
                          ),
                  ],
                );
              },
            ),
            const Footer(),
          ],
        ),
      ),
    );
  }

  final List<Widget> firstContainer = [
    Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset('assets/img/logo_word.png'),
        ),
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: Text(
            '"Түпқараған жастары" жастар қоғамдық бірлестігі',
            style: AppTextStyles.s18w500cPrimary,
          ),
        ),
        Container(
          padding: const EdgeInsets.all(8.0),
          width: 500,
          child: const Text(
            'Бұл елдің белсенді тұрғындарының әлеуметтік бастамаларын қолдауға бағытталған пікірлестер командасы.',
            style: AppTextStyles.s32w600cb,
          ),
        ),
        SizedBox(width: 500),
      ],
    ),
    Stack(
      children: [
        Image.asset('assets/img/main_image.png'),
        const SizedBox(
          height: 400,
        ),
        Positioned(
          left: 0,
          right: 0,
          bottom: 0,
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: AppColors.primary,
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Text(
                '«Түпқараған жастары» жастар қоғамдық бірлестігі – бұл елдің белсенді тұрғындарының әлеуметтік бастамаларын қолдауға бағытталған пікірлестер командасы.',
                style: AppTextStyles.s18w500cw,
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ),
      ],
    ),
  ];

  Widget smallContainersGenerator(String title, String text, String iconPath) {
    return Container(
      padding: const EdgeInsets.all(40.0),
      height: 320,
      width: 370,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(iconPath),
          Text(
            title,
            style: AppTextStyles.s20w600cb,
          ),
          Text(
            text,
            style: AppTextStyles.s18w400cb,
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }
}
