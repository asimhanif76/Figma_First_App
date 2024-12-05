import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class FilterPage extends StatefulWidget {
  const FilterPage({super.key});

  @override
  State<FilterPage> createState() => _FilterPageState();
}

class _FilterPageState extends State<FilterPage> {
  RangeValues value = RangeValues(0, 1);
  var colorList = [
    Colors.black38,
    Colors.blueAccent,
    Colors.deepOrangeAccent,
    Colors.black,
    Colors.grey.shade300,
    Colors.limeAccent.shade700,
    Colors.teal,
    Colors.amber,
    Colors.grey,
    Colors.deepOrange,
    Colors.grey,
    Colors.deepOrangeAccent,
    Colors.black,
    Colors.grey.shade300,
    Colors.redAccent.shade700,
    Colors.indigoAccent,
  ];
  var BrandImage = [
    'assets/images/replacement-logos-01 2.png',
    'assets/images/image 565.png',
    'assets/images/Ellipse 1308.png'
  ];
  var genderList = ['Men', 'Women', 'Unisex', 'Kids'];
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
  int? selectedIndex; // Add this to keep track of the selected index
  int? COuntryListIndex;
  int? SizeIndex;
  int? BrandImageColor;
  int? selectedColorIndex;
  @override
  Widget build(BuildContext context) {
    RangeLabels label =
        RangeLabels(value.start.toString(), value.end.toString());
    var _mediaQuery = MediaQuery.of(context);
    return Scaffold(
      backgroundColor: Colors.grey,
      body: Column(
        children: [
          SizedBox(
            height: _mediaQuery.size.height * 0.04,
          ),
          Container(
            height: _mediaQuery.size.height * 0.96,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30))),
            child: Column(
              children: [
                Divider(
                  color: Colors.grey.shade400,
                  thickness: 4,
                  indent: 165,
                  endIndent: 165,
                ),
                Container(
                  padding: EdgeInsets.only(left: 20, right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Filter',
                        style: TextStyle(
                            fontSize: 22, fontWeight: FontWeight.w400),
                      ),
                      InkWell(
                        onTap: () {
                          setState(() {
                            selectedIndex = null;
                            COuntryListIndex = null;
                            SizeIndex = null;
                            BrandImageColor = null;
                            selectedColorIndex = null;
                          });
                        },
                        child: Text(
                          'RESET',
                          style: TextStyle(fontSize: 15, color: Colors.grey),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 20, top: 15),
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Gender',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.w400),
                  ),
                ),
                SelectGender(),
                Row(
                  //  SIZE CONTAINER<<<>>>>...........................................
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 20, top: 20),
                      child: Text(
                        'Size',
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.w400),
                      ),
                    ),
                    selectCountry(),
                  ],
                ),
                SizeListView(),
                // SIZE BOX Builder container>>>>?....................................................
                Container(
                  margin: EdgeInsets.only(top: 15, left: 20),
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Brand',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.w400),
                  ),
                ),
                SelectBrand(),
                Container(
                  margin: EdgeInsets.only(top: 15, left: 20),
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Color',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.w400),
                  ),
                ),
                SelectColor(),
                Container(
                  margin: EdgeInsets.only(top: 15, left: 20),
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Price',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.w400),
                  ),
                ),
                RangeSlider(
                  values: value,
                  labels: label,
                  divisions: 10,
                  activeColor: Colors.orange,
                  inactiveColor: Colors.orange.shade100,
                  onChanged: (newValue) {
                    value = newValue;
                    setState(() {});
                  },
                ),
                Container(
                  margin: EdgeInsets.only(top: 20, left: 20, right: 20),
                  width: double.infinity,
                  height: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.black,
                  ),
                  child: Center(
                    child: Text(
                      "Apply",
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w500,
                          color: Colors.white),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget SelectColor() {
    return Container(
      width: double.infinity,
      height: 85,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              setState(() {
                selectedColorIndex = index;
              });
            },
            child: Stack(children: [
              Container(
                margin: EdgeInsets.only(
                  top: 15,
                  left: 20,
                ),
                height: 70,
                width: 70,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: colorList[index]),
              ),
              if (selectedColorIndex == index)
                Positioned(
                  right: 0,
                  top: 5,
                  child: Container(
                    width: 25,
                    height: 25,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.orange,
                    ),
                    child: Icon(
                      Icons.check,
                      color: Colors.white,
                      size: 20,
                    ),
                  ),
                )
            ]),
          );
        },
        itemCount: colorList.length,
      ),
    );
  }

  Widget SelectBrand() {
    return Container(
      margin: EdgeInsets.only(top: 15, left: 20),
      width: double.infinity,
      height: 70,
      child: ListView.separated(
        separatorBuilder: (context, index) => SizedBox(
          width: 20,
        ),
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              setState(() {
                BrandImageColor = index;
              });
            },
            child: Container(
              width: 120,
              height: 70,
              decoration: BoxDecoration(
                  color: BrandImageColor == index
                      ? Colors.orange
                      : Colors.grey.shade400,
                  borderRadius: BorderRadius.circular(15)),
              child: Image(
                image: AssetImage(BrandImage[index]),
                color: Colors.white,
              ),
            ),
          );
        },
        itemCount: BrandImage.length,
      ),
    );
  }

  Widget SelectGender() {
    return Container(
      // GENDER CONTAINER>>>.........................................
      margin: EdgeInsets.only(left: 20, top: 20),
      width: double.infinity,
      height: 70,
      child: ListView.separated(
        separatorBuilder: (context, index) => SizedBox(
          width: 20,
        ),
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              setState(() {
                selectedIndex = index;
              });
            },
            child: Container(
              width: 120,
              decoration: BoxDecoration(
                color: selectedIndex == index
                    ? Colors.orange.shade600
                    : Colors.grey.shade400,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Center(
                child: Text(
                  genderList[index],
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ),
            ),
          );
        },
        itemCount: genderList.length,
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

  Widget SizeListView() {
    return Container(
      width: double.infinity,
      height: 85,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              setState(() {
                SizeIndex = index;
              });
            },
            child: Container(
              margin: EdgeInsets.only(
                top: 15,
                left: 20,
              ),
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
}
