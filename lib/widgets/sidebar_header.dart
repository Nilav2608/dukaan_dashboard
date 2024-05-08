import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SidebarHeader extends StatelessWidget {
  const SidebarHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(5),
                child: Image.asset(
                  'assets/images/logo.jpg',
                  height: 40,
                  width: 40,
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Nishyan",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w500),
                  ),
                  Text(
                    "Visit store",
                    style: TextStyle(
                        color: Color(0xffD2D4D9),
                        decoration: TextDecoration.underline,
                        decorationColor: Color(0xffD2D4D9),
                        fontSize: 15,
                        fontFamily: 'Galano',
                        fontWeight: FontWeight.w400),
                  ),
                ],
              ),
            ],
          ),
          IconButton(
              onPressed: () {},
              icon: SvgPicture.asset('assets/icons/down_arrow.svg'))
        ],
      ),
    );
  }
}
