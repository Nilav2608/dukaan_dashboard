import 'package:flutter/material.dart';

class TabelHeader extends StatelessWidget {
  const TabelHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 40,
      decoration: BoxDecoration(
        color: const Color(0xffF2F2F2),
        borderRadius: BorderRadius.circular(6),
      ),
      child: const Row(
        children: [
          //* Date column
          Padding(
            padding: EdgeInsets.only(left: 12.0, top: 10, bottom: 10),
            child: SizedBox(
              width: 157.67,
              height: 20,
              child: Row(
                children: [
                  Text(
                    "Date",
                    style: TextStyle(
                        color: Color(0xff4D4D4D),
                        fontSize: 14,
                        fontFamily: 'Galano',
                        fontWeight: FontWeight.w500),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 10.0),
                    child: Icon(
                      Icons.arrow_drop_down,
                      color: Color(0xff4D4D4D),
                    ),
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            width: 40,
          ),
          //*Status column
          Padding(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: SizedBox(
              width: 157.67,
              height: 20,
              child: Row(
                children: [
                  Text(
                    "Status",
                    style: TextStyle(
                        color: Color(0xff4D4D4D),
                        fontSize: 14,
                        fontFamily: 'Galano',
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            width: 40,
          ),
          //*Transaction ID column
          Padding(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: SizedBox(
              width: 157.67,
              height: 20,
              child: Row(
                children: [
                  Text(
                    "Transaction ID",
                    style: TextStyle(
                        color: Color(0xff4D4D4D),
                        fontSize: 14,
                        fontFamily: 'Galano',
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            width: 40,
          ),
          //*Order amount column
          Padding(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: SizedBox(
              width: 157.67,
              height: 20,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    "Order amount",
                    style: TextStyle(
                        color: Color(0xff4D4D4D),
                        fontSize: 14,
                        fontFamily: 'Galano',
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            width: 40,
          ),
          //*Transaction fees column
          Padding(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: SizedBox(
              width: 157.67,
              height: 20,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    "Transaction fees",
                    style: TextStyle(
                        color: Color(0xff4D4D4D),
                        fontSize: 14,
                        fontFamily: 'Galano',
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            width: 40,
          ),
          //* column
          Padding(
            padding: EdgeInsets.only(top: 10,bottom: 10,right: 12),
            child: SizedBox(
              width: 157.67,
              height: 20,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    "Total",
                    style: TextStyle(
                        color: Color(0xff4D4D4D),
                        fontSize: 14,
                        fontFamily: 'Galano',
                        fontWeight: FontWeight.w500),
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
