import 'package:flutter/material.dart';
import 'package:restify2/ui/screen/restodetail.dart';
import 'package:restify2/ui/value/color.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
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
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        child: ListView(
          physics: const BouncingScrollPhysics(),
          children: [
            CustomCard(
              image: "assets/resto.png",
              label: "Food Shala Kannur",
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => RestoDetail()));
              },
            ),
            SizedBox(
              height: 20,
            ),
            CustomCard(
              image: "assets/resto1.png",
              label: "Food Shala Kannur",
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => RestoDetail()));
              },
            ),
          ],
        ),
      ),
    );
  }
}

class CustomCard extends StatelessWidget {
  final Function() onTap;
  final String image, label;
  final bool abc;
  const CustomCard({
    super.key,
    required this.image,
    required this.label,
    required this.onTap,
    this.abc = true,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Material(
        borderRadius: BorderRadius.circular(abc ? 8 : 0),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(abc ? 8 : 0),
          child: Stack(
            alignment: Alignment.bottomLeft,
            children: [
              Image.asset(
                image,
                height: 200,
                fit: BoxFit.cover,
                width: MediaQuery.of(context).size.width,
              ),
              Padding(
                padding: const EdgeInsets.all(15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      label,
                      style:
                          Theme.of(context).textTheme.headlineSmall!.copyWith(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: const [
                        CustomIconText(
                          text: "2 km",
                          iconData: Icons.location_pin,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        CustomIconText(
                          text: "8.6",
                          iconData: Icons.star,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        CustomIconText(
                          text: "10%",
                          iconData: Icons.discount,
                          color: Colors.red,
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class CustomIconText extends StatelessWidget {
  final String text;
  final IconData iconData;
  final Color color;
  const CustomIconText({
    super.key,
    required this.text,
    required this.iconData,
    this.color = primaryColor,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: color,
      borderRadius: BorderRadius.circular(30),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              text,
              style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
            ),
            const SizedBox(
              width: 5,
            ),
            Icon(
              iconData,
              color: Colors.white,
              size: 15,
            )
          ],
        ),
      ),
    );
  }
}
