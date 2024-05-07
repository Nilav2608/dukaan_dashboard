import 'package:dukaan_dashboard/widgets/navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Row(
      children: [
        const Expanded(flex: 2, child: SideNavigationBar()),
        Expanded(
            flex: 9,
            child: Container(
              decoration: const BoxDecoration(color: Colors.white),
              child: Column(),
            ))
      ],
    ));
  }
}
