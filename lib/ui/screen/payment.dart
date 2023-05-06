import 'package:flutter/material.dart';

import '../value/color.dart';
import 'homscreen.dart';
import 'loginscreen.dart';

class PaySc extends StatelessWidget {
  const PaySc({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: Text(
          "Payment",
          style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
        ),
        backgroundColor: primaryColor,
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Column(
            children: [
              const SizedBox(
                height: 10,
              ),
              TextField(
                style: Theme.of(context).textTheme.titleLarge!.copyWith(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                    ),
                decoration: const InputDecoration(
                  hintText: "Card Number",
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              TextField(
                style: Theme.of(context).textTheme.titleLarge!.copyWith(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                    ),
                decoration: const InputDecoration(
                  hintText: "Expiry Month",
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              TextField(
                style: Theme.of(context).textTheme.titleLarge!.copyWith(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                    ),
                decoration: const InputDecoration(
                  hintText: "Expiry Year",
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              TextField(
                style: Theme.of(context).textTheme.titleLarge!.copyWith(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                    ),
                decoration: const InputDecoration(
                  hintText: "CVV",
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              CustomButton(
                text: "Make Payment",
                onTap: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => HomeScreen()));
                },
              ),
              const SizedBox(
                height: 60,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
