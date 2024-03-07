import 'package:flutter/material.dart';
import 'package:quiz_it/Views/customtext.dart';
import 'package:quiz_it/Views/profile_info.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const CustomText(label: 'Profile'),
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
        child: const Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage('assets/profile_picture.png'),
              ),
              SizedBox(height: 20),
              CustomText(
                label: 'John Doe',
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
              SizedBox(height: 10),
              CustomText(
                label: 'john.doe@example.com',
                fontSize: 16,
                labelColor: Colors.grey,
              ),
              SizedBox(height: 20),
              ProfileInfo(
                icon: Icons.calendar_today,
                label: 'Joined Date',
                value: 'January 1, 2023',
                labelColor: Colors.white70,
              ),
              ProfileInfo(
                icon: Icons.location_on,
                label: 'Location',
                value: 'New York, USA',
                labelColor: Colors.white70,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
