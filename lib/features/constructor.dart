import 'package:flutter/material.dart';
import 'package:tj_app/constants/styles.dart';
import 'package:tj_app/widgets/social_widget.dart';
import 'package:tj_app/widgets/switch_locale.dart';

class Construct extends StatefulWidget {
  const Construct({super.key});

  @override
  State<Construct> createState() => _ConstructState();
}

class _ConstructState extends State<Construct> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        centerTitle: true,
        backgroundColor: AppStyles().color1,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(
              'assets/img/icon_round.png',
              width: 50,
              height: 50,
            ),
            SocialButtons(),
            SwitchLocale()
          ],
        ),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 45),
        color: AppStyles().color1,
        height: 200,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset('assets/img/icon_round.png'),
                Spacer(),
                SocialButtons(),
                Spacer(),
              ],
            ),
            Spacer(),
            Text(
              'Copyright © 2023 Түпқараған жастары',
              style: CustomTextStyles.s12w400cw,
            )
          ],
        ),
      ),
    );
  }
}
