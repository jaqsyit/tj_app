import 'package:flutter/material.dart';
import 'package:tj_app/constants/styles.dart';

class TopNav extends StatelessWidget {
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
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        if (constraints.maxWidth >= 1440) {
          // Экран больше или равен 1440 пикселям, используем Row
          return SizedBox(
            width: 1440,
            child: Row(
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
        } else {
          return IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {
              showModalBottomSheet(
                context: context,
                builder: (BuildContext context) {
                  return ListView(
                    children: tabLabels.map((label) {
                      return ListTile(
                        title: Text(
                          label,
                          style: CustomTextStyles.s16w400cb,
                        ),
                        onTap: () {
                          Navigator.pop(context); // Закрыть меню после нажатия
                        },
                      );
                    }).toList(),
                  );
                },
              );
            },
          );
        }
      },
    );
  }
}
