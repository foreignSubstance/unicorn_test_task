import 'package:flutter/material.dart';
import 'package:unicorn_test_task/settings.dart';

class Finance extends StatelessWidget {
  const Finance({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Financial Summary',
                style: widgetTitleStyle,
              ),
              Text(
                'See More',
                style: buttonTextStyle,
              ),
            ],
          ),
          const SizedBox(
            height: 16,
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 137,
            padding: const EdgeInsets.all(12),
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(8)),
              boxShadow: [
                BoxShadow(
                  color: Color(0x267799A8),
                  blurRadius: 10,
                  offset: Offset(0, 4),
                )
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Image.asset(
                  'assets/images/chart.png',
                  width: MediaQuery.of(context).size.width,
                  height: 74,
                  fit: BoxFit.fitWidth,
                ),
                const SizedBox(
                  height: 16,
                ),
                const Text(
                  '£1550 earned this month',
                  style: TextStyle(
                    fontSize: 16,
                    color: Color(0xFF202226),
                  ),
                  textAlign: TextAlign.left,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
