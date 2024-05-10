import 'package:dukaan_dashboard/models/transaction_details_model.dart';
import 'package:flutter/material.dart';

class TabelRow extends StatelessWidget {
  final TransactionDetailsModel data;
  const TabelRow({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    const double verticalPadding = 14;
    return Container(
      width: double.infinity,
      // height: 40,
      child: Row(
        children: [
          //* Date column
          Padding(
            padding: const EdgeInsets.only(
                left: 12.0, top: verticalPadding, bottom: verticalPadding),
            child: SizedBox(
              width: 150.67,
              height: 20,
              child: Row(
                children: [
                  Text(
                    data.date ?? "",
                    style: const TextStyle(
                        color: Color(0xff146EB4),
                        fontSize: 14,
                        fontFamily: 'Galano',
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            width: 40,
          ),
          //*Status column
          Padding(
            padding: const EdgeInsets.symmetric(vertical: verticalPadding),
            child: SizedBox(
              width: 150.67,
              height: 20,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5.0),
                    child: Container(
                      width: 10,
                      height: 10,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: data.status == "Successful"
                              ? const Color(0xff17B31B)
                              : const Color(0xff999999)),
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Text(
                    data.status ?? "Unknown",
                    style: const TextStyle(
                        color: Color(0xff4D4D4D),
                        fontSize: 14,
                        fontFamily: 'Galano',
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            width: 40,
          ),
          //*Transaction ID column
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: SizedBox(
              width: 150.67,
              height: 20,
              child: Row(
                children: [
                  Text(
                    data.transactionID ?? "",
                    style: const TextStyle(
                        color: Color(0xff4D4D4D),
                        fontSize: 14,
                        fontFamily: 'Galano',
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            width: 40,
          ),
          //*Order amount
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: SizedBox(
              width: 150.67,
              height: 20,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    "₹${data.orderAmount}",
                    style: const TextStyle(
                        color: Color(0xff1A181E),
                        fontSize: 14,
                        fontFamily: 'Galano',
                        fontWeight: FontWeight.w400),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            width: 40,
          ),
          //*Transaction fees
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: SizedBox(
              width: 150.67,
              height: 20,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    "₹${data.transactionFees}",
                    style: const TextStyle(
                        color: Color(0xff1A181E),
                        fontSize: 14,
                        fontFamily: 'Galano',
                        fontWeight: FontWeight.w400),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            width: 40,
          ),
          //* column
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: SizedBox(
              width: 150.67,
              height: 20,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    "₹${data.total}",
                    style: const TextStyle(
                        color: Color(0xff1A181E),
                        fontSize: 14,
                        fontFamily: 'Galano',
                        fontWeight: FontWeight.w400),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
