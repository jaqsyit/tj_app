import 'package:flutter/material.dart';
import 'package:tj_app/constants/styles.dart';

class SwitchLocale extends StatelessWidget {
  SwitchLocale({Key? key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          padding: EdgeInsets.all(5),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10), color: Colors.white),
          child: Text(
            'Каз',
            style: TextStyle(color: AppStyles().color1),
          ),
        ),
        Container(
            padding: EdgeInsets.all(5),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: AppStyles().color1),
            child: Text('Рус')),
      ],
    );
  }
}
