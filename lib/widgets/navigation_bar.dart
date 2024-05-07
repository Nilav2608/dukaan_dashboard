import 'package:dukaan_dashboard/data/side_menu_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'sidebar_header.dart';

class SideNavigationBar extends StatefulWidget {
  const SideNavigationBar({super.key});

  @override
  State<SideNavigationBar> createState() => _SideNavigationBarState();
}

int selectedIndex = 0;

class _SideNavigationBarState extends State<SideNavigationBar> {
  @override
  Widget build(BuildContext context) {
    SideMenuData data = SideMenuData();
    return Container(
      decoration: const BoxDecoration(color: Color(0xff1E2640)),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 8),
        child: Column(
          children: [
            const SidebarHeader(),
            const SizedBox(
              height: 24,
            ),
            Expanded(
              child: ListView.builder(
                  itemCount: data.sideMenuData.length,
                  itemBuilder: (context, index) {
                    var menuData = data.sideMenuData[index];
                    return Padding(
                      padding: const EdgeInsets.symmetric(
                        // horizontal: 16.0,
                        vertical: 4.0,
                      ),
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            selectedIndex = index;
                          });
                        },
                        child: Container(
                          width: 208,
                          height: 36,
                          decoration: BoxDecoration(
                              color: selectedIndex == index
                                  ? const Color(0xff343C53)
                                  : Colors.transparent,
                              borderRadius: BorderRadius.circular(4.0)),
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 16, top: 8, bottom: 8),
                                child: SvgPicture.asset(
                                  menuData.iconPath,
                                  colorFilter: const ColorFilter.mode(
                                      Color(0xffD2D4D9), BlendMode.srcIn),
                                ),
                              ),
                              const SizedBox(
                                width: 12,
                              ),
                              Text(
                                menuData.name,
                                style: const TextStyle(
                                    color: Color(0xffD2D4D9),
                                    fontSize: 14,
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
