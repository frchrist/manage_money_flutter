import 'package:flutter/material.dart';

class BalanceCard extends StatelessWidget {
  const BalanceCard({super.key,  this.color , required this.label, required this.amount});
  final String label;
  final String amount;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: const BorderRadius.all(Radius.circular(10)),
          boxShadow: [
            BoxShadow(
                color: Colors.black.withOpacity(0.1),
                blurRadius: 2,
                spreadRadius: 2,
                offset: const Offset(0, 2))
          ]),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 15,
        ),
        child: Column(
          children: [
            Text(
              label,
              style: const TextStyle(fontWeight: FontWeight.w500, fontSize: 15),
            ),
            SizedBox(height: 10,),
            Text(
              amount,
              style:  TextStyle(
                fontWeight: FontWeight.w500, fontSize: 17,
                color: color
                ),

            ),
          ],
        ),
      ),
    );
  }
}
