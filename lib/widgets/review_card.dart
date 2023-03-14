import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class ReviewCard extends StatefulWidget {
  const ReviewCard({super.key});

  @override
  State<ReviewCard> createState() => _ReviewCardState();
}

class _ReviewCardState extends State<ReviewCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 18.5),
      decoration: BoxDecoration(
          border:
              Border.all(color: Color.fromARGB(255, 50, 50, 50), width: 0.25),
          color: Color.fromARGB(255, 255, 255, 255),
          borderRadius: BorderRadius.circular(10)),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(100),
                    child: Image.asset(
                      'assets/Floyd-Morris-Remake-1024x879-1.jpg',
                      width: 45,
                      height: 45,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(
                    width: 11.5,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'Some Handyman',
                        style: TextStyle(
                            fontSize: 14.5,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1,
                            color: Color.fromARGB(255, 20, 28, 56)),
                      ),
                      Text(
                        'Developer',
                        style: TextStyle(
                            fontSize: 12.5,
                            letterSpacing: 1,
                            color: Color.fromARGB(255, 20, 28, 56)),
                      ),
                    ],
                  )
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 4.0),
                    child: Icon(
                      Icons.star,
                      size: 15,
                      color: Color.fromARGB(255, 221, 208, 103),
                    ),
                  ),
                  Text(
                    '4',
                    style: TextStyle(
                        fontSize: 16.5,
                        letterSpacing: 1,
                        color: Color.fromARGB(255, 20, 28, 56)),
                  ),
                ],
              )
            ],
          ),
          SizedBox(
            height: 11.5,
          ),
          Divider(),
          Text(
            'You can wrap your TextField widget with Material. Material has property about the shadow. You can use it like this:',
            style: TextStyle(
                fontSize: 13.5,
                letterSpacing: 1,
                color: Color.fromARGB(255, 20, 28, 56)),
          )
        ],
      ),
    );
  }
}
