import 'package:dukaan_dashboard/pages/payouts/utils/next_payout_card.dart';
import 'package:dukaan_dashboard/pages/payouts/utils/pay_details_card.dart';
import 'package:dukaan_dashboard/pages/payouts/utils/payouts_header.dart';
import 'package:flutter/material.dart';

class Payouts extends StatefulWidget {
  const Payouts({super.key});

  @override
  State<Payouts> createState() => _PayoutsState();
}

List<String> options = <String>[
  'This Month',
  'This Week',
  'Last Month',
  'This Year'
];
String dropdownValue = 'This Month';

class _PayoutsState extends State<Payouts> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(color: Colors.white),
      child: Column(
        children: [
          const PayoutsHeader(),
          const SizedBox(
            height: 32,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Overview",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontFamily: 'Galano',
                          fontWeight: FontWeight.w500),
                    ),
                    //Drop down button
                    Container(
                      width: 137,
                      height: 36,
                      decoration: BoxDecoration(
                          border: Border.all(
                            color: const Color(0xffE0E0E0),
                          ),
                          borderRadius: BorderRadius.circular(4)),
                      child: DropdownButton<String>(
                        value: dropdownValue,
                        onChanged: (String? value) {
                          setState(() {
                            dropdownValue = value!;
                          });
                        },
                        underline: const SizedBox(),
                        isExpanded: true,
                        style: const TextStyle(color: Colors.black),
                        dropdownColor: Colors.white,
                        icon: const Padding(
                          padding: EdgeInsets.only(right: 14.0),
                          child: Icon(Icons.keyboard_arrow_down_rounded,
                              color: Colors.black),
                        ),
                        selectedItemBuilder: (BuildContext context) {
                          return options.map((String value) {
                            return Align(
                              alignment: Alignment.center,
                              child: Text(dropdownValue,
                                  style: const TextStyle(
                                      color: Color(0xff4D4D4D),
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400)),
                            );
                          }).toList();
                        },
                        items: options
                            .map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(
                              value,
                              style: const TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w400),
                            ),
                          );
                        }).toList(),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 24,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    NextPayoutCard(
                      amount: '2,312.23',
                      date: 'Today, 04:00PM',
                    ),
                    // Eligible and Non Eligible amounts
                    Column(
                      children: [
                        PayDetailsCard(
                            heading: "Eligible Amount", amount: "2,312.20"),
                        SizedBox(height: 20),
                        PayDetailsCard(
                            heading: "Not Eligible Amount", amount: "92,312.20")
                      ],
                    ),

                    //Refunds and completed payouts
                    Column(
                      children: [
                        PayDetailsCard(heading: "Refunds", amount: "2,333"),
                        SizedBox(height: 20),
                        PayDetailsCard(
                            heading: "Completed Payouts",
                            amount: "23,92,312.19")
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
