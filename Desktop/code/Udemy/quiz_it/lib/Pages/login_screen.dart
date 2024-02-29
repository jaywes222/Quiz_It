import 'package:flutter/material.dart';
import 'package:quiz_it/Pages/dashboard_screen.dart';
import 'package:quiz_it/Views/customtext.dart';
import 'package:quiz_it/Views/customtextfield.dart';

class LoginScreen extends StatelessWidget {
  // Constructor function
  const LoginScreen({
    super.key,
  });

  @override
  Widget build(context) {
    TextEditingController usernameController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Quiz It Login'),
          centerTitle: true,
          foregroundColor: Colors.white,
          backgroundColor: const Color.fromARGB(255, 107, 15, 168),
          titleTextStyle: const TextStyle(
            color: Colors.black54,
            fontSize: 24.0,
            fontWeight: FontWeight.bold,
          ),
          leading: IconButton(
            icon: const Icon(Icons.arrow_back_outlined),
            onPressed: () {
              Navigator.of(context).pop();
            },
            color: Colors.black54,
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
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/images/quiz-logo.png',
                      width: 300,
                      height: 110,
                      //Adding Transparency To The Image
                      color: const Color.fromARGB(150, 255, 255, 255),
                    ),
                  ],
                ),
                const CustomText(label: 'Username'),
                CustomTextField(
                  controller: usernameController,
                  hintMessage: 'Email/ Phone Number',
                  icon: Icons.person_2_outlined,
                ),
                const SizedBox(
                  height: 10.0,
                ),
                const CustomText(
                  label: 'Password',
                ),
                CustomTextField(
                  controller: passwordController,
                  hintMessage: 'Siri Yako',
                  icon: Icons.lock_outlined,
                  obscureText: true,
                  isPassword: true,
                ),
                const SizedBox(
                  height: 10.0,
                ),
                const CustomText(
                  label: 'Forgot Password?',
                  fontSize: 18,
                ),
                GestureDetector(
                  onTap: () {
                    // Add functionality for resetting password here
                  },
                  child: const CustomText(
                    label: ' Reset Password',
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 80.0,
                ),
                OutlinedButton.icon(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const DashboardScreen()));
                  },
                  style:
                      OutlinedButton.styleFrom(foregroundColor: Colors.white),
                  icon: const Icon(Icons.arrow_circle_right_outlined),
                  label: const Text('Login Now'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
