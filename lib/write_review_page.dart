import 'package:custom_rating_bar/custom_rating_bar.dart';
import 'package:figma_first_project/login_page.dart';
import 'package:flutter/material.dart';

class WriteReviewPage extends StatefulWidget {
  const WriteReviewPage({super.key});

  @override
  State<WriteReviewPage> createState() => _WriteReviewPageState();
}

class _WriteReviewPageState extends State<WriteReviewPage> {
  int? ratingVAlue;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            appbar(),
            switchbutton(),
            ratingStar(),
            writereview(),
            addPhoto(),
            submitR()
          ],
        ),
      ),
    );
  }

  Widget submitR() {
    return Container(
      margin: EdgeInsets.only(left: 20, right: 20, top: 15),
      height: 55,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30), color: Colors.black),
      child: Center(
        child: Text(
          'Submit Review',
          style: TextStyle(fontSize: 22, color: Colors.white),
        ),
      ),
    );
  }

  Widget addPhoto() {
    var _mediaQuey = MediaQuery.of(context);

    return Container(
      padding: EdgeInsets.only(top: 15, left: 20, right: 20),
      height: _mediaQuey.size.height * 0.4,
      alignment: Alignment.centerLeft,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            'Add photo',
            style: TextStyle(fontSize: 17),
          ),
          SizedBox(
            height: 16,
          ),
          Container(
            width: 80,
            height: 80,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.grey.shade200),
            child: Icon(
              Icons.add,
              size: 30,
            ),
          ),
        ],
      ),
    );
  }

  Widget writereview() {
    var _mediaQuey = MediaQuery.of(context);

    return Container(
      height: _mediaQuey.size.height * 0.2,
      alignment: Alignment.centerLeft,
      padding: EdgeInsets.only(top: 15, left: 20, right: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Write Your Review',
            style: TextStyle(fontSize: 17),
          ),
          SizedBox(
            height: 8,
          ),
          SizedBox(
            height: 119,
            // width: double.infinity,
            child: TextField(
              maxLines: 5,
              decoration: InputDecoration(
                hintText: 'Write your review here',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: Colors.grey.shade200),
                ),

                // contentPadding: EdgeInsets.symmetric(
                //   vertical: 50.0, // Adjust vertical padding for height
                // ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget ratingStar() {
    var _mediaQuey = MediaQuery.of(context);

    return Container(
      height: _mediaQuey.size.height * 0.1,
      padding: EdgeInsets.only(left: 20, top: 20),
      alignment: Alignment.bottomLeft,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Rating for this product',
            style: TextStyle(fontSize: 17),
          ),
          SizedBox(
            height: 5,
          ),
          RatingBar(
            filledIcon: Icons.star,
            emptyIcon: Icons.star_border,
            onRatingChanged: (value) => debugPrint('$value'),
            initialRating: 3,
            maxRating: 5,
          )
        ],
      ),
    );
  }

  Widget switchbutton() {
    var _mediaQuey = MediaQuery.of(context);

    return Container(
      height: _mediaQuey.size.height * 0.04,
      // width: _mediaQuey.size.width * 1,
      padding: EdgeInsets.only(left: 20, right: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          switch_button(),
          switch_button(),
        ],
      ),
    );
  }

  Widget appbar() {
    var _mediaQuey = MediaQuery.of(context);
    return Container(
      height: _mediaQuey.size.height * 0.16,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 40, left: 20, right: 125),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(Icons.arrow_back_ios_new_outlined),
                Text(
                  'Write Reviews',
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
          Container(
            padding: EdgeInsets.only(left: 20, top: 18),
            alignment: Alignment.centerLeft,
            child: Text(
              'What do you recommend for this product ?',
              style: TextStyle(fontSize: 17),
            ),
          )
        ],
      ),
    );
  }
}
