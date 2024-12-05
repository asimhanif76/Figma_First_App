import 'package:figma_first_project/cart_page.dart';
import 'package:figma_first_project/filter_page.dart';
import 'package:figma_first_project/menu_page.dart';
import 'package:figma_first_project/product_detail_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var a = 0;
  final List<String> imagePath = [
    'assets/images/image01.png',
    'assets/images/image02.png',
    'assets/images/image03.png',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Row(
          children: [
            Container(
              margin: EdgeInsets.only(left: 20),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => MenuPage(),
                      ));
                },
                child: Icon(
                  Icons.notes_outlined,
                  size: 32,
                ),
              ),
            ),
          ],
        ),
        actions: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                child: Row(
                  children: [
                    Icon(
                      Icons.search,
                      size: 30,
                    ),
                    SizedBox(
                      width: 13,
                    ),
                    Stack(children: [
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
                                style: TextStyle(
                                    fontSize: 12, color: Colors.white),
                              )),
                        ),
                      ),
                    ])
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
      body: DefaultTabController(
        length: 4,
        initialIndex: 1,
        //  animationDuration: Duration(seconds: 3),
        child: Column(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 300,
                      child: TabBar(
                        unselectedLabelColor: Colors.grey,
                        tabAlignment: TabAlignment.start,
                        labelColor: Colors.black,
                        isScrollable: true,
                        indicatorColor: Colors.black,
                        dividerHeight: 0,
                        tabs: [
                          Tab(
                            text: '  All   ',
                          ),
                          Tab(
                            text: '   Shoes  ',
                          ),
                          Tab(
                            text: '   Clothes  ',
                          ),
                          Tab(
                            text: 'Kids',
                          ),
                        ],
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => FilterPage(),
                            ));
                      },
                      child: Container(
                        width: 70,
                        child: Image.asset('assets/images/Stroke.png'),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              child: TabBarView(
                children: [
                  Center(child: Text('No items')),
                  SingleChildScrollView(
                    child: Column(
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => ProductDetailPage(),
                                ));
                          },
                          child: Container(
                            margin: EdgeInsets.only(top: 30),
                            width: 360,
                            height: 440,
                            decoration: BoxDecoration(
                                color: Color(0xFFE1E7EE),
                                borderRadius: BorderRadius.circular(20)),
                            child: Column(
                              children: [
                                Container(
                                  height: 200,
                                  width: 290,
                                  margin: EdgeInsets.only(top: 20),
                                  child:
                                      Image.asset('assets/images/image532.png'),
                                ),
                                Container(
                                  width: 270,
                                  height: 95,
                                  child: Text(
                                    '20% OFF ON YOUR CHOICE',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 36,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 46),
                                  alignment: Alignment.centerLeft,
                                  child: Text('USe Code DTE21 at checkout.'),
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 40, top: 16),
                                  alignment: Alignment.centerLeft,
                                  child: Container(
                                    width: 200,
                                    height: 60,
                                    decoration: BoxDecoration(
                                        color: Colors.black,
                                        borderRadius:
                                            BorderRadius.circular(30)),
                                    child: Center(
                                        child: Text(
                                      "Start Shoping",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 20,
                                          fontWeight: FontWeight.w500),
                                    )),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 30, top: 14),
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Recomended for you',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 25,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                        ListView.separated(
                          separatorBuilder: (context, index) => SizedBox(
                            height: 20,
                          ),
                          physics: NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          itemBuilder: (context, index) {
                            return Container(
                              margin:
                                  EdgeInsets.only(left: 20, right: 20, top: 20),
                              width: 360,
                              height: 300,
                              decoration: BoxDecoration(
                                  color: Color(0xFFE1E7EE),
                                  borderRadius: BorderRadius.circular(20)),
                              child: Column(
                                children: [
                                  Container(
                                      margin: EdgeInsets.only(top: 30),
                                      child: Image(
                                          image: AssetImage(imagePath[index]))),
                                  Container(
                                    child: Column(
                                      children: [
                                        SizedBox(
                                          height: 25,
                                        ),
                                        Text(
                                          'Nike Air Max 95',
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 20,
                                              fontWeight: FontWeight.w600),
                                        ),
                                        SizedBox(
                                          height: 15,
                                        ),
                                        Text(
                                          'Women Shoes',
                                          style: TextStyle(
                                              color: Colors.grey, fontSize: 14),
                                        ),
                                        SizedBox(
                                          height: 15,
                                        ),
                                        Text(
                                          '\$290.00',
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 20,
                                              fontWeight: FontWeight.w600),
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            );
                          },
                          itemCount: imagePath.length,
                        )
                      ],
                    ),
                  ),
                  Center(child: Text('No items')),
                  Center(child: Text('No items')),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
