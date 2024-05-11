import 'package:dukaan_dashboard/pages/payouts/payouts.dart';
import 'package:dukaan_dashboard/widgets/navigation_bar.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: Row(
      children: [
        Expanded(
          flex: 33,
          child: SideNavigationBar(),
        ),
        Expanded(flex: 185, child: Payouts())
      ],
    ));
  }
}
