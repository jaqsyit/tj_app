import 'package:flutter/material.dart';
import 'package:tj_app/constants/styles.dart';

class TopNav extends StatelessWidget {
  TopNav({Key? key});

  final List<String> tabLabels = [
    'Басты бет',
    'Жаңалықтар',
    'Біз туралы',
    'Жылдық есеп',
    'Жобалар',
    'Ойын battle',
    'Байланыс',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: tabLabels.map((label) {
          return TextButton(
            onPressed: () {},
            child: Text(
              label,
              style: CustomTextStyles.s16w400cb,
            ),
          );
        }).toList(),
      ),
    );
  }
}
