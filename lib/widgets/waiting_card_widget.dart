import 'package:flutter/material.dart';

class WaitingCardWWidget extends StatelessWidget {
  const WaitingCardWWidget({
    Key? key,
    required this.count,
    required this.level,
    required this.time,
  }) : super(key: key);

  final String count;
  final String level;
  final String time;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Level: $level',
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Count: $count',
                ),
                Text(
                  'Average Time: $time',
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
