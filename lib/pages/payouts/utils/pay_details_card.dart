import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class PayDetailsCard extends StatelessWidget {
  final String heading;
  final String amount;
  const PayDetailsCard(
      {super.key, required this.heading, required this.amount});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 370.67,
      height: 110,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2), // Shadow color
              spreadRadius: 2,
              blurRadius: 7,
              offset: const Offset(0, 2),
            ),
          ]),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  heading,
                  style: const TextStyle(
                      color: Color(0xff4D4D4D),
                      fontSize: 16,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w400),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4),
                  child: SvgPicture.asset(
                    'assets/icons/info.svg',
                    width: 16,
                    height: 16,
                    colorFilter: const ColorFilter.mode(
                        Color(0xff4D4D4D), BlendMode.srcIn),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 16,
            ),
            Text(
              "₹$amount",
              style: const TextStyle(
                  color: Color(0xff1A181E),
                  fontSize: 32,
                  fontFamily: 'Galano',
                  fontWeight: FontWeight.w500),
            ),
          ],
        ),
      ),
    );
  }
}
