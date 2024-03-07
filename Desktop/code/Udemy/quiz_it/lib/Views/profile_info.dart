import 'package:flutter/material.dart';

class ProfileInfo extends StatelessWidget {
  const ProfileInfo(
      {super.key,
      required this.icon,
      required this.label,
      required this.labelColor,
      required this.value});

  final IconData icon;
  final String label;
  final Color labelColor;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Row(
        children: <Widget>[
          Icon(icon, color: Colors.blue),
          const SizedBox(width: 10),
          Text(
            label,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          const Spacer(),
          Text(
            value,
            style: const TextStyle(fontSize: 18),
          ),
        ],
      ),
    );
  }
}
