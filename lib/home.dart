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
        Expanded(flex: 2, child: SideNavigationBar()),
        Expanded(
            flex: 9,
            child: Payouts()
        )
      ],
    ));
  }
}
