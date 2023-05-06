import 'package:flutter/material.dart';

import 'homscreen.dart';
import 'loginscreen.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool isOb = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Column(
            children: [
              const SizedBox(
                height: 50,
              ),
              Image.asset(
                "assets/ab.png",
                width: 300,
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                "Sign Up",
                style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
              ),
              const SizedBox(
                height: 30,
              ),
              TextField(
                style: Theme.of(context).textTheme.titleLarge!.copyWith(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                    ),
                decoration: const InputDecoration(
                  hintText: "Email",
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              TextField(
                obscureText: isOb,
                style: Theme.of(context).textTheme.titleLarge!.copyWith(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                    ),
                decoration: InputDecoration(
                  suffixIcon: GestureDetector(
                    onTap: () {
                      setState(() {
                        isOb = !isOb;
                      });
                    },
                    child: Icon(isOb ? Icons.visibility : Icons.visibility_off),
                  ),
                  hintText: "Password",
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              TextField(
                obscureText: isOb,
                style: Theme.of(context).textTheme.titleLarge!.copyWith(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                    ),
                decoration: InputDecoration(
                  suffixIcon: GestureDetector(
                    onTap: () {
                      setState(() {
                        isOb = !isOb;
                      });
                    },
                    child: Icon(isOb ? Icons.visibility : Icons.visibility_off),
                  ),
                  hintText: "Confirm Password",
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              CustomButton(
                text: "Sign up",
                onTap: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => HomeScreen()));
                },
              ),
              const SizedBox(
                height: 60,
              ),
              CustomText(
                onTap: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => LoginScreen()));
                },
                text: "Already have an account?",
                text2: "Login",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
