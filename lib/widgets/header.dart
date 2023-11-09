import 'package:flutter/material.dart';
import 'package:tj_app/widgets/social_widget.dart';
import 'package:tj_app/widgets/switch_locale.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 1200,
      child: Row(
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
    );
  }
}
