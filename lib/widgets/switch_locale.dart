import 'package:flutter/material.dart';
import 'package:tj_app/constants/styles.dart';

class SwitchLocale extends StatelessWidget {
  SwitchLocale({Key? key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 60,
          height: 40,
          padding: const EdgeInsets.all(5),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Colors.white,
          ),
          child: const Center(
            child: Text(
              'Қаз',
              style: TextStyle(color: AppColors.primary),
            ),
          ),
        ),
        Container(
          padding: const EdgeInsets.all(5),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: AppColors.primary),
          child: const Center(
            child: Text('Рус'),
          ),
        ),
      ],
    );
  }
}
