import 'package:flutter/material.dart';
import 'package:tj_app/constants/styles.dart';
import 'package:tj_app/widgets/footer.dart';
import 'package:tj_app/widgets/header.dart';

class Construct extends StatelessWidget {
  const Construct({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        centerTitle: true,
        backgroundColor: AppStyles().color1,
        title: const Header(),
      ),
      body: const Footer(),
    );
  }
}
