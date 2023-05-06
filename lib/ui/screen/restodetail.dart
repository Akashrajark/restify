import 'package:flutter/material.dart';
import 'package:restify2/ui/screen/bookres.dart';
import 'package:restify2/ui/screen/homscreen.dart';
import 'package:restify2/ui/screen/loginscreen.dart';
import 'package:restify2/ui/screen/menuscreen.dart';
import 'package:restify2/ui/value/color.dart';

class RestoDetail extends StatelessWidget {
  const RestoDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: Text(
          "FoodShala Kannur",
          style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
        ),
        backgroundColor: primaryColor,
      ),
      body: ListView(
        children: [
          CustomCard(
            abc: false,
            image: "assets/resto1.png",
            label: "Night Hotel",
            onTap: () {},
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Description",
                  style: Theme.of(context).textTheme.titleLarge!.copyWith(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it.... ",
                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Address",
                  style: Theme.of(context).textTheme.titleLarge!.copyWith(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "kannur ,thazhechiaa near djggfsjkf sm road,pin83483y",
                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Contact",
                  style: Theme.of(context).textTheme.titleLarge!.copyWith(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "93473473447\nfoodshala@gmail.com",
                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                ),
                SizedBox(
                  height: 30,
                ),
                CustomButton(
                  text: "Book Reservation",
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => BookRes()));
                  },
                ),
                SizedBox(
                  height: 10,
                ),
                CustomButton(
                  text: "View Menu",
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => MenuScreen()));
                  },
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
