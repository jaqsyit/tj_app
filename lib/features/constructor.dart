// import 'package:flutter/material.dart';
// import 'package:tj_app/constants/styles.dart';
// import 'package:tj_app/widgets/footer.dart';
// import 'package:tj_app/widgets/header.dart';

// class Construct extends StatelessWidget {
//   const Construct({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         toolbarHeight: 80,
//         centerTitle: true,
//         backgroundColor: AppStyles().color1,
//         title: const Header(),
//       ),
//       body: const Footer(),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:tj_app/constants/styles.dart';
import 'package:tj_app/widgets/footer.dart';
import 'package:tj_app/widgets/header.dart';
import 'package:tj_app/widgets/top_navigation.dart';

class Construct extends StatelessWidget {
  const Construct({super.key});

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.sizeOf(context).width;
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        centerTitle: true,
        backgroundColor: AppStyles().color1,
        title: const Header(),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            TopNav(),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              width: 1440,
              child: Row(
                children: [
                  screenWidth > 1440
                      ? Image.asset('assets/img/back_left.png')
                      : const SizedBox(),
                  Spacer(),
                  screenWidth >= 1440
                      ? Image.asset('assets/img/back_right.png')
                      : const SizedBox(),
                ],
              ),
            ),
            const Footer(),
          ],
        ),
      ),
    );
  }
}
