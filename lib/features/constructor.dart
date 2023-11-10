import 'package:flutter/material.dart';
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
                return Padding(
                  padding: const EdgeInsets.only(bottom: 70),
                  child: Column(
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
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 35),
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
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 35),
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
                  ),
                );
              },
            ),
            LayoutBuilder(
              builder: (context, constraints) {
                return Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 70, horizontal: 10),
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Text(
                        'Біз туралы',
                        style: AppTextStyles.s32w600cb,
                      ),
                      const SizedBox(height: 30),
                      constraints.maxWidth >= 1200
                          ? Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: aboutUsContainer,
                            )
                          : Column(
                              children: aboutUsContainer,
                            )
                    ],
                  ),
                );
              },
            ),
            LayoutBuilder(
              builder: (context, constraints) {
                return Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 70, horizontal: 10),
                  child: Column(
                    children: [
                      const Text(
                        'Атқарған жобаларымыз',
                        style: AppTextStyles.s32w600cb,
                      ),
                      const SizedBox(height: 70),
                      Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Colors.white,
                          ),
                          child: constraints.maxWidth >= 1200
                              ? Container(
                                  width: 1200,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: completedProjects,
                                  ),
                                )
                              : Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: completedProjects,
                                ))
                    ],
                  ),
                );
              },
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 70),
              color: Colors.white,
              width: double.infinity,
              child: Column(
                children: [
                  const Text(
                    'Фотоесеп',
                    style: AppTextStyles.s32w600cb,
                  ),
                  const SizedBox(height: 40),
                  Image.asset('assets/img/about_us.png')
                ],
              ),
            ),
            Column(
              children: [
                const Padding(
                  padding: EdgeInsets.all(70.0),
                  child: Text(
                    'Бірлестік туралы жылы лебіздер',
                    style: AppTextStyles.s32w600cb,
                  ),
                ),
                citatyContainersGenerator(
                  'Дархан Қыдырәлі, ҚР Ақпарат және қоғамдық даму министрі',
                  'Бастысы – бұл жобалардың бәрінің әлеуметтік жауапкершілігі жоғары. Бәрі де мұқтаж жандардың жанына жалау болу, соларға сүйеу, солардың идеясына демеу болу еді. Осы ойымыздың үдесіне шыққандаймыз.',
                ),
                citatyContainersGenerator(
                  'Нұрлан Ноғаев, Маңғыстау облысының әкімі',
                  'Жастардың бойында бір мықты қасиет бар. Бірақ, ол өте тез таусылады. Оны таусылмай тұрып, тез қажетке жарату керек. Өйткені, ол қасиеттің аты – жастық! Zhas Project сол жастықты игі істерге жұмсап жүр, ризамын бұл азаматтарға!',
                ),
                citatyContainersGenerator(
                  'Мұқаш Оралбай, МО әкімінің жастар саясаты бойынша кеңесшісі',
                  'Өңір жастарының, облыстағы қоғамдық ұйымдардың әлеуетін көрсеткен «Түпқараған жастары» қоғамдық бірлестігіне алғысымды білдіремін! Үлкен іс атқарылды, әлі де атқарылады деп сенемін.',
                ),
              ],
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
        const SizedBox(width: 500),
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

  final List<Widget> aboutUsContainer = [
    Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
      ),
      child: Image.asset('assets/img/about_us.png'),
    ),
    const SizedBox(width: 50),
    SizedBox(
      height: 400,
      width: 400,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          const Text(
            '"Түпқараған жастары"',
            style: AppTextStyles.s28w600cb,
          ),
          const Divider(color: Colors.transparent),
          const Text(
            '«Түпқараған жастары» жастар қоғамдық бірлестігі – ерікті мүліктік жарналар негізінде құрылған, мүшелік емес коммерциялық емес ұйым.',
            style: AppTextStyles.s18w400cb,
          ),
          const Text(
            'Адам күн сайын өз жолында қиындықтарға кезігеді және Бірлестік өз іс-әрекетімен осы мәселелерді шешуге және азаматтардың өмірін жайлы етуге тырысады.',
            style: AppTextStyles.s18w400cb,
          ),
          const Divider(color: Colors.transparent),
          Container(
            width: 190,
            height: 50,
            decoration: BoxDecoration(
              gradient: const LinearGradient(
                colors: [
                  Color.fromRGBO(175, 157, 98, 1),
                  Color.fromRGBO(145, 131, 85, 1),
                ],
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
              ),
              borderRadius: BorderRadius.circular(10),
            ),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.transparent,
                shadowColor: Colors.transparent,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              onPressed: () {},
              child: const Text('Толығырақ',
                  style: TextStyle(color: Colors.white)),
            ),
          ),
        ],
      ),
    )
  ];

  final List<Widget> completedProjects = [
    Image.asset('assets/img/about_us.png'),
    const SizedBox(
      width: 30,
      height: 30,
    ),
    SizedBox(
      width: 300,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Align(
            alignment: Alignment.topRight,
            child: Container(
              width: 160,
              height: 40,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40), color: Colors.green),
              child: const Center(
                child: Text(
                  'Жүзеге асырылды',
                  style: AppTextStyles.s14w600cw,
                ),
              ),
            ),
          ),
          const SizedBox(height: 20),
          const Text(
            '“ZHAS PROJECT”',
            style: AppTextStyles.s28w600cb,
          ),
          const SizedBox(height: 20),
          const Text(
            'Маңғыстау облысында гранттар беру рәсімдерінің барынша ашықтығын қамтамасыз ете отырып, жастардың әлеуметтік осал топтары арасында пилоттық жобаны іске асыру.',
            style: AppTextStyles.s18w400cb,
          ),
          const SizedBox(height: 20),
          const Text(
            '2021-2022',
            style: AppTextStyles.s18w400cb,
          ),
        ],
      ),
    )
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

  Widget citatyContainersGenerator(String tittle, text) {
    return Container(
      margin: const EdgeInsets.only(bottom: 70),
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 50),
      height: 210,
      width: 1000,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: Colors.white,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset('assets/icons/etc.png'),
          const SizedBox(
            width: 50,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  tittle,
                  style: AppTextStyles.s20w600cb,
                ),
                const Spacer(),
                Text(
                  text,
                  style: AppTextStyles.s18w400cb,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
