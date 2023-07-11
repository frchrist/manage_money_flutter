import 'package:flutter/material.dart';

class BudgetSettingCard extends StatelessWidget {
  const BudgetSettingCard(
      {super.key,
      required this.amount,
      required this.date,
      required this.image,
      required this.label,
      required this.color,
      }
      );
  final String image;
  final String label;
  final String date;
  final String amount;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Container(
              width: 50,
              height: 50,
              decoration:  BoxDecoration(
                color: color,
                borderRadius: const BorderRadius.all(
                  Radius.circular(25),
                ),
              ),
              child: Image.asset(image),
            ),
            const SizedBox(
              width: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  label,
                  style: const TextStyle(
                      fontSize: 20, fontWeight: FontWeight.w600),
                ),
                const SizedBox(
                  height: 2,
                ),
                Text(
                  date,
                  style: const TextStyle(
                    fontSize: 13,
                  ),
                )
              ],
            ),
          ],
        ),
        Text(
          amount,
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    );
  }
}
