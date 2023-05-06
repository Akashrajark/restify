import 'package:flutter/material.dart';
import 'package:restify2/ui/screen/splashscreen.dart';

import 'ui/value/color.dart';

void main() {
  runApp(const Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        inputDecorationTheme: InputDecorationTheme(
          hintStyle: Theme.of(context).textTheme.titleMedium!.copyWith(
                color: Colors.black.withOpacity(0.7),
                fontWeight: FontWeight.w500,
              ),
          fillColor: primaryColor.withOpacity(.5),
          suffixIconColor: Colors.black,
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(8),
          ),
          filled: true,
        ),
      ),
      home: const SplashScreen(),
    );
  }
}
