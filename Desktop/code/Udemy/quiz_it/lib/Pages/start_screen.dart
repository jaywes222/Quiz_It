import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_it/Pages/registration_screen.dart';
import 'package:quiz_it/Views/customtext.dart';
import 'package:quiz_it/Views/customtextfield.dart';

class StartScreen extends StatelessWidget {
  // Constructor function
  const StartScreen(
    this.startQuiz, {
    super.key,
  });

  final void Function() startQuiz;

  @override
  Widget build(context) {
    TextEditingController usernameController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const CustomText(label: 'Login Page'),
            const SizedBox(
              height: 50,
            ),
            Image.asset(
              'assets/images/quiz-logo.png',
              width: 300,
              height: 110,
              //Adding Transparency To The Image
              color: const Color.fromARGB(150, 255, 255, 255),
            ),

            const SizedBox(
              height: 80,
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

            const SizedBox(
              height: 10.0,
            ),

            const SizedBox(
              height: 30,
            ),

            //Creating A Clickable ICon
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                OutlinedButton.icon(
                  onPressed: startQuiz,
                  style: OutlinedButton.styleFrom(
                    foregroundColor: Colors.white,
                  ),
                  icon: const Icon(Icons.arrow_right_alt),
                  label: const Text('Quiz It!'),
                ),
                const SizedBox(
                  width: 100,
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const RegistrationScreen()));
                  },
                  child: const Text("Register Now"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  void navigateToRegistration() {
    Get.toNamed("/registration_screen");
  }
}
