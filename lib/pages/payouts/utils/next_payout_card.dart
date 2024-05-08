import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';

class NextPayoutCard extends StatelessWidget {
  final String amount;
  final String date;
  const NextPayoutCard({super.key, required this.amount, required this.date});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 370.67,
          height: 240,
          decoration: BoxDecoration(
            color: const Color(0xff146EB4),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    const Text(
                      "Next Payout",
                      style: TextStyle(
                          color: Color(0xffFFFFFF),
                          fontSize: 16,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w400),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 8.0, vertical: 4),
                      child: SvgPicture.asset(
                        'assets/icons/info.svg',
                        width: 16,
                        height: 16,
                        colorFilter: const ColorFilter.mode(
                            Color(0xffFFFFFF), BlendMode.srcIn),
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
                      color: Color(0xffFFFFFF),
                      fontSize: 40,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w400),
                ),
              ],
            ),
          ),
        ),
        Positioned(
          bottom: 0,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Container(
              width: 370.67,
              height: 52,
              decoration: BoxDecoration(
                color: const Color(0xff0E4F82),
                borderRadius: BorderRadius.circular(8),
              ),
              child:  Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Next payout date:",
                      style: TextStyle(
                          color: Color(0xffF2F2F2),
                          fontSize: 14,
                          fontFamily: 'Galano',
                          fontWeight: FontWeight.w400),
                    ),
                    Text(
                      date,
                      style: const TextStyle(
                          color: Color(0xffFFFFFF),
                          fontSize: 14,
                          fontFamily: 'Galano',
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
