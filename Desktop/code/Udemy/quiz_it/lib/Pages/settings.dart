import 'package:flutter/material.dart';
import 'package:quiz_it/Views/customtext.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
        centerTitle: true,
        foregroundColor: Colors.white,
        backgroundColor: const Color.fromARGB(255, 107, 15, 168),
        titleTextStyle: const TextStyle(
          color: Colors.black54,
          fontSize: 24.0,
          fontWeight: FontWeight.bold,
        ),
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromARGB(255, 78, 13, 151),
              Color.fromARGB(255, 107, 15, 168),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CustomText(
                  label: 'General Settings',
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  labelColor: Colors.black54),
              const SizedBox(height: 10),
              SwitchListTile(
                title: const CustomText(label: 'Notifications'),
                value: true,
                onChanged: (value) {},
              ),
              const SizedBox(height: 20),
              const CustomText(
                label: 'Appearance',
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
              const SizedBox(height: 10),
              ListTile(
                title: const CustomText(
                  label: 'Theme',
                ),
                trailing: const Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.white,
                ),
                onTap: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
