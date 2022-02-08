import 'package:flutter/material.dart';

class HospitalCardWWidget extends StatelessWidget {
  const HospitalCardWWidget({
    Key? key,
    required this.label,
    this.onPressed,
  }) : super(key: key);

  final String label;
  final Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Card(
        margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
        child: ListTile(
          leading: const Icon(
            Icons.home_work,
            size: 24.0,
          ),
          title: Text(label),
        ),
      ),
    );
  }
}
