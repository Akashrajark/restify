import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:restify2/ui/screen/homscreen.dart';
import 'package:restify2/ui/screen/loginscreen.dart';
import 'package:restify2/ui/screen/payment.dart';

import '../value/color.dart';

class BookRes extends StatelessWidget {
  const BookRes({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: Text(
          "Restify",
          style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
        ),
        backgroundColor: primaryColor,
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          child: Column(
            children: [
              CustomCard(
                  onTap: () {},
                  image: "assets/resto1.png",
                  label: "FoodShala Kannur"),
              const SizedBox(
                height: 20,
              ),
              Text(
                "Enter details and complete reservation ",
                style: Theme.of(context).textTheme.titleMedium!.copyWith(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
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
                  hintText: "Phone Number",
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
                  hintText: "Number of Seats",
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
                  hintText: "Time",
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              CustomButton(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const PaySc()),
                  );
                },
                text: "Make Payment",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
