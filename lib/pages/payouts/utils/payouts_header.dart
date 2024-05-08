import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class PayoutsHeader extends StatelessWidget {
  const PayoutsHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 64,
      decoration: const BoxDecoration(
          border: Border(bottom: BorderSide(color: Color(0xffD9D9D9)))),
      //main row
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32.0),
        child: Row(
          children: [
            //payouts & how it works
            SizedBox(
              width: 360,
              height: 26,
              child: Row(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(right: 16.0),
                    child: Text(
                      "Payouts",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontFamily: 'Galano',
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(6.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 6.0),
                          child: SvgPicture.asset('assets/icons/info.svg'),
                        ),
                        const Text(
                          "How it works",
                          style: TextStyle(
                              color: Color(0xff4D4D4D),
                              fontSize: 12,
                              fontFamily: 'Galano',
                              fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            //search box
            Container(
              width: 400,
              height: 40,
              decoration: BoxDecoration(
                  color: const Color(0xffF2F2F2),
                  borderRadius: BorderRadius.circular(6)),
              child: Padding(
                padding: const EdgeInsets.all(9.0),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 16, right: 8),
                      child: SvgPicture.asset('assets/icons/search.svg'),
                    ),
                    const Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                            hintText: "Search features, tutorials, etc.",
                            hintStyle: TextStyle(
                                color: Color(0xff808080),
                                fontSize: 15,
                                fontFamily: 'Galano',
                                fontWeight: FontWeight.w400),
                            border: InputBorder.none),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            //Icons
            Expanded(
              child: SizedBox(
                height: 40,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    const SizedBox(
                      width: 30,
                    ),
                    Row(
                      children: [
                        Stack(children: [
                          ClipOval(
                            child: Container(
                              width: 40,
                              height: 40,
                              decoration: const BoxDecoration(
                                  color: Color(0xffE6E6E6),
                                  shape: BoxShape.circle),
                            ),
                          ),
                          IconButton(
                              onPressed: () {},
                              icon: SvgPicture.asset('assets/icons/chat.svg')),
                        ]),
                        const SizedBox(
                          width: 12,
                        ),
                        Stack(children: [
                          ClipOval(
                            child: Container(
                              width: 40,
                              height: 40,
                              decoration: const BoxDecoration(
                                  color: Color(0xffE6E6E6),
                                  shape: BoxShape.circle),
                            ),
                          ),
                          IconButton(
                              onPressed: () {},
                              icon: SvgPicture.asset(
                                  'assets/icons/dropdown.svg')),
                        ]),
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
