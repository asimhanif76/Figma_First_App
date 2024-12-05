import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ReviewPage extends StatefulWidget {
  const ReviewPage({super.key});

  @override
  State<ReviewPage> createState() => _ReviewPageState();
}

class _ReviewPageState extends State<ReviewPage> {
  var imagePath = [
    'assets/images/image 568.png',
    'assets/images/image01.png',
    'assets/images/image02.png',
    'assets/images/image03.png',
  ];
  var reviewImage = [
    'assets/images/1.jfif',
    'assets/images/2.jfif',
    'assets/images/3.jfif',
  ];
  var reviewName = [
    'Asim Hanif',
    'Usama Arif',
    'Aqeel Ahmed',
  ];
  var reviewText = [
    "The most comfortable Nike’s I’ve wom in the past couple of years has been the 32s.These have surpassed that. They look amazing and have comfort. You can see where this review is going.",
    "The most comfortable Nike’s I’ve wom in the past couple of years has been the 32s.These have surpassed that. They look amazing and have comfort. You can see where this review is going.",
    "The most comfortable Nike’s I’ve wom in the past couple of years has been the 32s.These have surpassed that. They look amazing and have comfort. You can see where this review is going.",
  ];
  int? colorIndex;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          appbar(),
          reviewRow(),
          writeReview(),
          reviewBuilder(),
        ],
      ),
    );
  }

  Widget reviewRow() {
    var _mediaQuery = MediaQuery.of(context);
    // int? colorIndex;
    return Container(
      height: _mediaQuery.size.height * 0.09,
      width: double.infinity,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              setState(() {
                colorIndex = index;
              });
            },
            child: Container(
              margin: EdgeInsets.only(right: 0, left: 20),
              // height: 40,
              // width: 60,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: colorIndex == index
                      ? Colors.orange
                      : Colors.grey.shade200),
              child: index == 0
                  ? Center(
                      child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 18),
                      child: Text(
                        "All Reviews",
                        style: TextStyle(
                            fontSize: 18,
                            color: colorIndex == index
                                ? Colors.grey.shade200
                                : Colors.black),
                      ),
                    ))
                  : Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          child: Icon(Icons.star,
                              size: 26,
                              color: colorIndex == index
                                  ? Colors.grey.shade200
                                  : Colors.orange),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          child: Text(
                            index.toString(),
                            style: TextStyle(
                                color: colorIndex == index
                                    ? Colors.grey.shade200
                                    : Colors.black,
                                fontSize: 19),
                          ),
                        )
                      ],
                    ),
            ),
          );
        },
        itemCount: 6,
      ),
    );
  }

  Widget reviewBuilder() {
    var _mediaQuery = MediaQuery.of(context);
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      height: _mediaQuery.size.height * 0.71,
      child: ListView.builder(
        itemBuilder: (context, index) {
          return Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 0, right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          radius: 26,
                          backgroundImage: AssetImage(reviewImage[index]),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: Text(
                            reviewName[index],
                            style: TextStyle(fontSize: 16),
                          ),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.star,
                          color: Colors.orange,
                          size: 15,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.orange,
                          size: 15,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.orange,
                          size: 15,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.orange,
                          size: 15,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.orange,
                          size: 15,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 32, right: 32, top: 25, bottom: 25),
                child: Text(reviewText[index]),
              ),
              Container(
                height: 80,
                width: 300,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(right: 15),
                      child: Container(
                        // height: 80,
                        width: 80,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.grey.shade200),
                        child: Image(image: AssetImage(imagePath[index])),
                      ),
                    );
                  },
                  itemCount: 3,
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 10, bottom: 20),
                alignment: Alignment.centerLeft,
                child: Text(
                  '10-02-2024',
                  style: TextStyle(color: Colors.grey),
                ),
              )
            ],
          );
        },
        itemCount: reviewName.length,
      ),
    );
  }

  Widget writeReview() {
    var _mediaQuey = MediaQuery.of(context);
    return Container(
      height: _mediaQuey.size.height * 0.07,
      padding: EdgeInsets.only(top: 10, left: 20, right: 20),
      alignment: Alignment.centerLeft,
      child: Text(
        'Write a Review',
        style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
      ),
    );
  }

  Widget appbar() {
    var _mediaQuey = MediaQuery.of(context);
    return Container(
      height: _mediaQuey.size.height * 0.13,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 40, left: 20, right: 155),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(Icons.arrow_back_ios_new_outlined),
                Text(
                  'Reviews',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                )
              ],
            ),
          ),
          Divider(
            height: 10,
            indent: 20,
            endIndent: 20,
          ),
        ],
      ),
    );
  }
}
