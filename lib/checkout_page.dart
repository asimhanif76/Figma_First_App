import 'package:flutter/material.dart';

class CheckoutPage extends StatefulWidget {
  const CheckoutPage({super.key});

  @override
  State<CheckoutPage> createState() => _CheckoutPageState();
}

class _CheckoutPageState extends State<CheckoutPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          appbar(),
          listbuilder(),
          Text(
            '--------------------------------------',
            style: TextStyle(
                color: Colors.grey.shade400,
                fontSize: 30,
                fontWeight: FontWeight.w100),
          ),
          textcontainer(),
          checkoutcontainer(),
        ],
      ),
    );
  }
}

Widget checkoutcontainer() {
  return Column(
    children: [
      Container(
        margin: EdgeInsets.only(left: 20, right: 20, top: 20),
        height: 50,
        width: double.infinity,
        decoration: BoxDecoration(
            color: Colors.grey.shade200,
            borderRadius: BorderRadius.circular(15)),
        child: Center(
            child: Text(
          '+Add more items',
          style: TextStyle(fontSize: 18),
        )),
      ),
      Container(
        margin: EdgeInsets.only(left: 20, right: 20, top: 30),
        height: 50,
        width: double.infinity,
        decoration: BoxDecoration(
            color: Colors.black, borderRadius: BorderRadius.circular(25)),
        child: Center(
            child: Text(
          'Checkout',
          style: TextStyle(fontSize: 18, color: Colors.white),
        )),
      ),
    ],
  );
}

Widget textcontainer() {
  return Container(
    padding: EdgeInsets.only(left: 20, right: 20),
    height: 100,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Delivery fee',
              style: TextStyle(color: Colors.grey.shade400, fontSize: 20),
            ),
            Text(
              '\$0.0',
              style: TextStyle(fontSize: 20),
            )
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Discount',
              style: TextStyle(color: Colors.grey.shade400, fontSize: 20),
            ),
            Text(
              '\$20.00',
              style: TextStyle(fontSize: 20),
            )
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Total',
              style: TextStyle(color: Colors.grey.shade400, fontSize: 20),
            ),
            Text(
              '\$850.00',
              style: TextStyle(fontSize: 20),
            )
          ],
        )
      ],
    ),
  );
}

Widget listbuilder() {
  var imagelist = [
    'assets/images/image01.png',
    'assets/images/image02.png',
    'assets/images/image03.png'
  ];
  int a = 1;
  return ListView.builder(
    itemCount: imagelist.length,
    shrinkWrap: true,
    itemBuilder: (context, index) {
      return Container(
        alignment: Alignment.center,
        margin: EdgeInsets.only(top: 15, left: 20, right: 20),
        width: double.infinity,
        height: 100,
        decoration: BoxDecoration(
            color: Colors.grey.shade200,
            borderRadius: BorderRadius.circular(20)),
        child: Row(
          children: [
            Expanded(
              flex: 4,
              child: Container(
                margin: EdgeInsets.all(8),
                decoration: BoxDecoration(
                    color: Colors.grey.shade400,
                    borderRadius: BorderRadius.circular(14)),
                child: Image(image: AssetImage(imagelist[index])),
              ),
            ),
            Expanded(
              flex: 5,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Nike Air MAx',
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  Text(
                    '\$290.00',
                    style: TextStyle(color: Colors.grey),
                  ),
                  Row(
                    children: [
                      InkWell(
                        onTap: () {
                          a--;
                        },
                        child: CircleAvatar(
                          backgroundColor: Colors.grey.shade300,
                          radius: 15,
                          child: Icon(
                            Icons.horizontal_rule_sharp,
                            size: 15,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 12,
                      ),
                      Text('$a'),
                      SizedBox(
                        width: 12,
                      ),
                      InkWell(
                        onTap: () {
                          a++;
                        },
                        child: CircleAvatar(
                          backgroundColor: Colors.black,
                          radius: 15,
                          child: Icon(
                            Icons.add,
                            color: Colors.white,
                            size: 15,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                child: Icon(
                  Icons.bookmark,
                  color: Colors.black,
                ),
              ),
            ),
          ],
        ),
      );
    },
  );
}

Widget appbar() {
  return Container(
    padding: EdgeInsets.only(top: 50, left: 20, right: 20),
    child: Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(Icons.arrow_back_ios_new),
            Text(
              'See All Bookmarks',
              style: TextStyle(color: Colors.grey.shade400),
            ),
          ],
        ),
        Divider(
          color: Colors.grey.shade400,
        ),
        Container(
          padding: EdgeInsets.only(top: 30),
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'My Bag',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
              ),
              Text(
                '3 items',
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    color: Colors.grey),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}
