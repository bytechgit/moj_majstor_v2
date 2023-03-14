import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:moj_majstor/colors.dart';
import 'package:moj_majstor/widgets/review_card.dart';

class Reviews extends StatefulWidget {
  const Reviews({super.key});

  @override
  State<Reviews> createState() => _ReviewsState();
}

class _ReviewsState extends State<Reviews> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                        onTap: () {},
                        child: Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Color.fromARGB(93, 217, 217, 217),
                          ),
                          child: const Center(
                            child: Icon(
                              Icons.arrow_back_ios_new_rounded,
                              color: Colors.black,
                            ),
                          ),
                        )),
                    const Text(
                      'Some Handyman',
                      style: TextStyle(
                          fontSize: 16.5,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1,
                          color: Color.fromARGB(255, 20, 28, 56)),
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(100),
                      child: Image.asset(
                        'assets/Floyd-Morris-Remake-1024x879-1.jpg',
                        width: 45,
                        height: 45,
                        fit: BoxFit.cover,
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 25, vertical: 0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text(
                      'Reviews: 2',
                      style: TextStyle(
                          fontSize: 15.5,
                          letterSpacing: 1,
                          color: Color.fromARGB(255, 20, 28, 56)),
                    ),
                    const SizedBox(
                      width: 16,
                    ),
                    Row(
                      children: const [
                        Icon(
                          Icons.star,
                          color: Color.fromARGB(255, 221, 208, 103),
                        ),
                        Icon(
                          Icons.star,
                          color: Color.fromARGB(255, 221, 208, 103),
                        ),
                        Icon(
                          Icons.star,
                          color: Color.fromARGB(255, 221, 208, 103),
                        ),
                        Icon(
                          Icons.star,
                          color: Color.fromARGB(255, 221, 208, 103),
                        ),
                        Icon(
                          Icons.star,
                          color: Color.fromARGB(255, 92, 92, 92),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 35,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    ReviewCard(),
                    SizedBox(
                      height: 15,
                    ),
                    ReviewCard(),
                    SizedBox(
                      height: 15,
                    ),
                    ReviewCard(),
                    SizedBox(
                      height: 15,
                    ),
                    ReviewCard(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
