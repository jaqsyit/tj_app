import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:url_launcher/url_launcher.dart';

class SocialButtons extends StatelessWidget {
  SocialButtons({Key? key});

  final socialMediaData = [
    {
      'icon': 'assets/icons/insta.svg',
      'uri': 'https://www.instagram.com/tupkaragan_jastari',
    },
    {
      'icon': 'assets/icons/fb.svg',
      'uri': 'https://www.facebook.com/tupkaraganzhastari',
    },
    {
      'icon': 'assets/icons/youtube.svg',
      'uri': 'https://www.youtube.com/@tupkaraganzhastari',
    },
    {
      'icon': 'assets/icons/telegram.svg',
      'uri': 'https://t.me/tupkaragan_zhastari',
    },
    {
      'icon': 'assets/icons/mail.svg',
      'uri': 'https://www.tiktok.com/@tupkaragan_jastari',
    },
  ];

  Future<void> goToSocial(String uri) async {
    if (!await canLaunchUrl(Uri.parse(uri))) {
      throw Exception('Could not launch $uri');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: socialMediaData.map((data) {
        return IconButton(
          onPressed: () {
            goToSocial(data['uri']!);
          },
          icon: SvgPicture.asset(data['icon']!),
        );
      }).toList(),
    );
  }
}
