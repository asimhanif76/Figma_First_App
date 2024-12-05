import 'package:figma_first_project/cart_page.dart';
import 'package:figma_first_project/checkout_page.dart';
import 'package:figma_first_project/review_page.dart';
import 'package:figma_first_project/write_review_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class ProductDetailPage extends StatefulWidget {
  const ProductDetailPage({super.key});

  @override
  State<ProductDetailPage> createState() => _ProductDetailPageState();
}

class _ProductDetailPageState extends State<ProductDetailPage> {
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
  var a = 0;
  var CountryList = ['UK', 'US', "EU"];
  var SizeList = [
    '5',
    '5.5',
    '6',
    '6.5',
    '7',
    '7.5',
    '8',
    '8.5',
    '9',
    '9.5',
    '10',
    '10.5',
    '11',
    '11.5',
    '12'
  ];
  bool isFirst = true;
  bool isFirst1 = true;
  bool isFirst2 = true;
  int? COuntryListIndex;
  int? SizeIndex;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            appBar(),
            pageviewpic(),
            menShoeContainer(),
            nikeAirContainer(),
            sizeCountryContainer(),
            SizeListView(),
            discription(),
            deliveryAndReturn(),
            seeReview(),
            addToCartRow(),
          ],
        ),
      ),
    );
  }

  Widget addToCartRow() {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
                shape: BoxShape.circle,
                color: Colors.white),
            child: InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => CheckoutPage(),
                    ));
              },
              child: Icon(
                Icons.bookmark_border_outlined,
                size: 28,
              ),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => CartPage(),
                  ));
            },
            child: Container(
              width: 280,
              height: 50,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30), color: Colors.black),
              child: Center(
                child: Text(
                  'Add To Cart',
                  style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w500,
                      color: Colors.white),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget seeReview() {
    return AnimatedCrossFade(
        firstChild: Container(
          padding: EdgeInsets.only(top: 10, left: 20, right: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'See Reviews',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
              ),
              InkWell(
                  onTap: () {
                    if (isFirst2 == true) {
                      isFirst2 = false;
                    } else {
                      isFirst2 = true;
                    }
                    setState(() {});
                  },
                  child: Icon(Icons.keyboard_arrow_down_sharp))
            ],
          ),
        ),
        secondChild: Container(
          padding: EdgeInsets.only(top: 10, left: 20, right: 20),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Product Reviews (10)',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
                  ),
                  Container(
                    child: Row(
                      children: [
                        Icon(
                          Icons.star,
                          color: Colors.orange,
                          size: 18,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.orange,
                          size: 18,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.orange,
                          size: 18,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.orange,
                          size: 18,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.orange,
                          size: 18,
                        ),
                        InkWell(
                            onTap: () {
                              if (isFirst2 == true) {
                                isFirst2 = false;
                              } else {
                                isFirst2 = true;
                              }
                              setState(() {});
                            },
                            child: Icon(
                              Icons.keyboard_arrow_up_outlined,
                            ))
                      ],
                    ),
                  )
                ],
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 10,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => WriteReviewPage(),
                                ));
                          },
                          child: Text(
                            'Write a review',
                            style: TextStyle(
                                fontSize: 19, fontWeight: FontWeight.w400),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => ReviewPage(),
                                ));
                          },
                          child: Text(
                            "See All",
                            style: TextStyle(
                                fontSize: 19, fontWeight: FontWeight.w400),
                          ),
                        )
                      ],
                    ),
                  ),
                  reviewBuilder(),
                ],
              ),
            ],
          ),
        ),
        crossFadeState:
            isFirst2 ? CrossFadeState.showFirst : CrossFadeState.showSecond,
        duration: Duration(milliseconds: 300));
  }

  Widget reviewBuilder() {
    return SizedBox(
      height: 400,
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
              // Padding(
              //   padding: const EdgeInsets.only(left: 40, right: 40),
              //   child: Row(
              //     mainAxisAlignment: MainAxisAlignment.spaceAround,
              //     children: [
              //       Container(
              //         height: 80,
              //         width: 80,
              //         decoration: BoxDecoration(
              //             borderRadius: BorderRadius.circular(10),
              //             color: Colors.grey.shade200),
              //       ),
              //       Container(
              //         height: 80,
              //         width: 80,
              //         decoration: BoxDecoration(
              //             borderRadius: BorderRadius.circular(10),
              //             color: Colors.grey.shade200),
              //       ),
              //       Container(
              //         height: 80,
              //         width: 80,
              //         decoration: BoxDecoration(
              //             borderRadius: BorderRadius.circular(10),
              //             color: Colors.grey.shade200),
              //       ),
              //     ],
              //   ),
              // ),
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

  Widget deliveryAndReturn() {
    return Column(
      children: [
        AnimatedCrossFade(
            firstChild: Container(
              padding: EdgeInsets.only(top: 10, left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Free Delivery and Returns',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
                  ),
                  InkWell(
                      onTap: () {
                        if (isFirst1 == true) {
                          isFirst1 = false;
                        } else {
                          isFirst1 = true;
                        }
                        setState(() {});
                      },
                      child: Icon(Icons.keyboard_arrow_down_sharp))
                ],
              ),
            ),
            secondChild: Container(
              padding: EdgeInsets.only(top: 10, left: 20, right: 20),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Free Delivery and Returns',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w400),
                      ),
                      InkWell(
                          onTap: () {
                            if (isFirst1 == true) {
                              isFirst1 = false;
                            } else {
                              isFirst1 = true;
                            }
                            setState(() {});
                          },
                          child: Icon(Icons.keyboard_arrow_up_sharp))
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Row(
                      children: [
                        Icon(
                          Icons.check,
                          color: Colors.orange,
                        ),
                        Text(
                          "Standard delivered 2-6 Business Days",
                          style: TextStyle(fontSize: 17),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 10, right: 8, bottom: 12),
                    child: Row(
                      children: [
                        Icon(
                          Icons.check,
                          color: Colors.orange,
                        ),
                        Text(
                          "Express delivered 2-4 Business Days",
                          style: TextStyle(fontSize: 17),
                        )
                      ],
                    ),
                  ),
                  Text(
                    "Orders are processed and delivered Monday-Friday (excluding public holidays)",
                    style: TextStyle(fontSize: 17),
                  )
                ],
              ),
            ),
            crossFadeState:
                isFirst1 ? CrossFadeState.showFirst : CrossFadeState.showSecond,
            duration: Duration(milliseconds: 200)),
        Divider(
          height: 30,
          indent: 20,
          endIndent: 20,
        ),
      ],
    );
  }

  Widget discription() {
    return Column(
      children: [
        AnimatedCrossFade(
            firstChild: Container(
              padding: EdgeInsets.only(top: 20, left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Description',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
                  ),
                  InkWell(
                      onTap: () {
                        if (isFirst == true) {
                          isFirst = false;
                        } else {
                          isFirst = true;
                        }
                        setState(() {});
                      },
                      child: Icon(Icons.keyboard_arrow_down_sharp))
                ],
              ),
            ),
            secondChild: Container(
              padding: EdgeInsets.only(top: 20, left: 20, right: 20),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Description',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w400),
                      ),
                      InkWell(
                          onTap: () {
                            if (isFirst == true) {
                              isFirst = false;
                            } else {
                              isFirst = true;
                            }
                            setState(() {});
                          },
                          child: Icon(Icons.keyboard_arrow_up_sharp))
                    ],
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 10),
                    child: Text(
                      "The Nike Blazer Mid '77 Infinite toughens up the old-school, b-ball icon that has become the go-to of the streets. Durable rubber details on the toe, heel and side let you take it where you want.",
                      style: TextStyle(fontSize: 17),
                    ),
                  )
                ],
              ),
            ),
            crossFadeState:
                isFirst ? CrossFadeState.showFirst : CrossFadeState.showSecond,
            duration: Duration(milliseconds: 200)),
        Divider(
          height: 30,
          indent: 20,
          endIndent: 20,
        ),
      ],
    );
  }

  Widget nikeAirContainer() {
    return Container(
      padding: EdgeInsets.only(top: 15, left: 20, right: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Nike Air Max',
            style: TextStyle(fontSize: 26, fontWeight: FontWeight.w500),
          ),
          Text(
            '\$290.00',
            style: TextStyle(fontSize: 26, fontWeight: FontWeight.w500),
          ),
        ],
      ),
    );
  }

  Widget sizeCountryContainer() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          margin: EdgeInsets.only(left: 20, top: 20),
          child: Text(
            'Size',
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.w400),
          ),
        ),
        selectCountry(),
      ],
    );
  }

  Widget SizeListView() {
    return Container(
      padding: EdgeInsets.only(left: 20, top: 15),
      width: double.infinity,
      height: 85,
      child: ListView.separated(
        separatorBuilder: (context, index) {
          return SizedBox(
            width: 20,
          );
        },
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              setState(() {
                SizeIndex = index;
              });
            },
            child: Container(
              height: 70,
              width: 70,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: SizeIndex == index ? Colors.orange : Colors.black26),
              child: Center(
                  child: Text(
                SizeList[index],
                style: TextStyle(color: Colors.white, fontSize: 20),
              )),
            ),
          );
        },
        itemCount: SizeList.length,
      ),
    );
  }

  Widget selectCountry() {
    return Container(
      margin: EdgeInsets.only(right: 10, top: 20),
      width: 110,
      height: 40,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              setState(() {
                COuntryListIndex = index;
              });
            },
            child: Container(
                child: Row(children: [
              Container(
                margin: EdgeInsets.all(5),
                width: 25,
                height: 25,
                decoration: BoxDecoration(
                    color: COuntryListIndex == index
                        ? Colors.black26
                        : Colors.white,
                    borderRadius: BorderRadius.circular(5)),
                child: Center(child: Text(CountryList[index])),
              ),
            ])),
          );
        },
        itemCount: CountryList.length,
      ),
    );
  }

  Widget menShoeContainer() {
    return Container(
      padding: EdgeInsets.only(top: 15, left: 20, right: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Men's Shoe",
            style: TextStyle(color: Colors.grey),
          ),
          Container(
            child: Row(
              children: [
                Icon(
                  Icons.star,
                  color: Colors.orange,
                ),
                Text(
                  '(4.5)',
                  style: TextStyle(color: Colors.grey),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget pageviewpic() {
    var controller = PageController();
    return Column(
      children: [
        Container(
          width: double.infinity,
          height: 240,
          decoration: BoxDecoration(
              color: Colors.grey.shade200,
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30))),
          child: Stack(children: [
            Container(
              alignment: Alignment.bottomCenter,
              child: SmoothPageIndicator(
                controller: controller,
                count: 4,
                effect: ExpandingDotsEffect(
                  activeDotColor: Colors.orange,
                  dotColor: Colors.grey,
                  dotHeight: 10,
                  dotWidth: 10,
                  expansionFactor: 2,
                  spacing: 5,
                ),
              ),
            ),
            PageView.builder(
              controller: controller,
              itemBuilder: (context, index) {
                return Image(image: AssetImage(imagePath[index]));
                // SmoothPageIndicator(
                //   controller: controller,
                //   count: 4,
                //   effect: ExpandingDotsEffect(),
                // );
              },
              itemCount: imagePath.length,
            ),
          ]),
        ),
      ],
    );
  }

  Widget appBar() {
    return Container(
      color: Colors.grey.shade200,
      padding: EdgeInsets.only(
        top: 30,
        left: 20,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(Icons.arrow_back_ios_outlined),
          Container(
            child: Stack(children: [
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => CartPage(),
                      ));
                },
                child: Container(
                  alignment: Alignment.lerp(
                      Alignment.center, Alignment.centerLeft, 0.4),
                  height: 50,
                  width: 60,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(25),
                      bottomLeft: Radius.circular(25),
                    ),
                  ),
                  child: Image.asset(
                    'assets/images/bag.png',
                    scale: 0.8,
                  ),
                ),
              ),
              Positioned(
                left: 26,
                top: 9,
                child: CircleAvatar(
                  radius: 9,
                  backgroundColor: Colors.deepOrangeAccent,
                  child: InkWell(
                      onTap: () {
                        a++;
                        setState(() {});
                      },
                      child: Text(
                        '$a',
                        style: TextStyle(fontSize: 12, color: Colors.white),
                      )),
                ),
              ),
            ]),
          ),
        ],
      ),
    );
  }
}
