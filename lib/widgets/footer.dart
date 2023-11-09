import 'package:flutter/material.dart';
import 'package:tj_app/constants/styles.dart';
import 'package:tj_app/widgets/social_widget.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 45, horizontal: 20),
      color: AppColors.primaryDark,
      height: 200,
      width: MediaQuery.sizeOf(context).width,
      child: Center(
        child: SizedBox(
          width: 1200,
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
                  SocialButtons(),
                  const SizedBox(width: 120),
                ],
              ),
              const Spacer(),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(width: 50),
                  Text(
                    'Copyright © 2023 Түпқараған жастары',
                    style: AppTextStyles.s12w400cw,
                  ),
                  SizedBox(width: 120),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
