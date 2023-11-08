import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:url_launcher/url_launcher.dart';

class SocialButtons extends StatelessWidget {
  SocialButtons({super.key});

  final fbUri = Uri.parse('https://www.facebook.com/tupkaraganzhastari');
  final instaUri = Uri.parse('https://www.instagram.com/tupkaragan_jastari');
  final youtubeUri =
      Uri.parse('https://www.youtube.com/@tupkaraganzhastari');
  final telegramUri = Uri.parse('https://t.me/tupkaragan_zhastari');
  final tiktokUri = Uri.parse('https://www.tiktok.com/@tupkaragan_jastari');

  Future<void> goToSocial(final varUri) async {
    if (!await launchUrl(varUri)) {
      throw Exception('Could not launch $varUri');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        IconButton(
          onPressed: () {
            goToSocial(instaUri);
          },
          icon: SvgPicture.asset(
            'assets/icons/insta.svg',
          ),
        ),
        IconButton(
          onPressed: () {
            goToSocial(fbUri);
          },
          icon: SvgPicture.asset(
            'assets/icons/fb.svg',
          ),
        ),
        IconButton(
          onPressed: () {
            goToSocial(youtubeUri);
          },
          icon: SvgPicture.asset(
            'assets/icons/youtube.svg',
          ),
        ),
        IconButton(
          onPressed: () {
            goToSocial(telegramUri);
          },
          icon: SvgPicture.asset(
            'assets/icons/telegram.svg',
          ),
        ),
        IconButton(
          onPressed: () {
            // goToSocial();
          },
          icon: SvgPicture.asset(
            'assets/icons/mail.svg',
          ),
        ),
      ],
    );
  }
}
