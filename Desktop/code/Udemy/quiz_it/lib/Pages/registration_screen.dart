import 'package:flutter/material.dart';
import 'package:quiz_it/Views/customtext.dart';
import 'package:quiz_it/Views/customtextfield.dart';

class RegistrationScreen extends StatelessWidget {
  const RegistrationScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    TextEditingController firstNameController = TextEditingController();
    TextEditingController phoneNumberController = TextEditingController();
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    TextEditingController reenterPasswordController = TextEditingController();

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Quiz It Registration'),
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
            padding: const EdgeInsets.fromLTRB(30, 20, 30, 20),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
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
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomText(
                        label: 'Register Here',
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ],
                  ),
                  const CustomText(
                    label: 'Name',
                  ),
                  CustomTextField(
                    controller: firstNameController,
                    hintMessage: "Enter Your Preferred Name",
                    icon: Icons.person,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const CustomText(
                    label: "Phone Number",
                  ),
                  CustomTextField(
                    controller: phoneNumberController,
                    hintMessage: "Enter Phone Number",
                    icon: Icons.phone,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const CustomText(
                    label: "Email",
                  ),
                  CustomTextField(
                    controller: emailController,
                    hintMessage: "Enter Email",
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const CustomText(
                    label: "Password",
                  ),
                  CustomTextField(
                    controller: passwordController,
                    hintMessage: "Enter Password",
                    icon: Icons.lock,
                    isPassword: true,
                    obscureText: true,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const CustomText(
                    label: "Re-enter Password",
                  ),
                  CustomTextField(
                    controller: reenterPasswordController,
                    hintMessage: "Re-enter Password",
                    icon: Icons.lock,
                    isPassword: true,
                    obscureText: true,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  OutlinedButton.icon(
                    onPressed: () {},
                    style:
                        OutlinedButton.styleFrom(foregroundColor: Colors.white),
                    icon: const Icon(Icons.arrow_circle_right_outlined),
                    label: const Text('Register Now'),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
