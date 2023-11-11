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
        if (constraints.maxWidth >= 1200) {
          return SizedBox(
            width: 1200,
            child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ...tabLabels.map((label) {
                    return TextButton(
                      onPressed: () {},
                      child: Text(
                        label,
                        style: AppTextStyles.s16w400cb,
                      ),
                    );
                  }).toList(),
                  const Divider(),
                  Container(
                    width: 160,
                    height: 40,
                    decoration: BoxDecoration(
                      gradient: const LinearGradient(
                        colors: [
                          Color.fromRGBO(175, 157, 98, 1),
                          Color.fromRGBO(145, 131, 85, 1),
                        ],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.transparent,
                        shadowColor: Colors.transparent,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      onPressed: () {},
                      child: const Text('Өтінім беру',
                          style: TextStyle(color: Colors.white)),
                    ),
                  ),
                  SizedBox(
                    height: 40,
                    width: 110,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.primary,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      onPressed: () {},
                      child: const Text('Кіру'),
                    ),
                  )
                ]),
          );
        } else {
          return PopupMenuButton<String>(
            onSelected: (String label) {},
            itemBuilder: (BuildContext context) {
              return tabLabels.map((String label) {
                return PopupMenuItem<String>(
                  value: label,
                  child: Text(
                    label,
                    style: AppTextStyles.s16w400cb,
                  ),
                );
              }).toList();
            },
            icon: const Icon(Icons.menu),
          );
        }
      },
    );
  }
}
