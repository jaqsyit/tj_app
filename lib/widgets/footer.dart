import 'package:flutter/material.dart';
import 'package:tj_app/constants/styles.dart';
import 'package:tj_app/widgets/social_widget.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 45),
      color: AppStyles().color1,
      height: 200,
      width: MediaQuery.sizeOf(context).width,
      child: Center(
        child: SizedBox(
          width: 960,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    'assets/img/icon_round.png',
                    width: 50,
                    height: 50,
                  ),
                  const Spacer(),
                  SocialButtons(),
                  const Spacer(),
                ],
              ),
              const Spacer(),
              const Text(
                'Copyright © 2023 Түпқараған жастары',
                style: CustomTextStyles.s12w400cw,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
