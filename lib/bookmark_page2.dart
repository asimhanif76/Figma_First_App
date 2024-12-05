import 'package:flutter/material.dart';

class BookmarkPage2 extends StatelessWidget {
  const BookmarkPage2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          appbar(),
          listbuilder(),
        ],
      ),
    );
  }

  Widget appbar() {
    return Container(
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
          margin: EdgeInsets.only(top: 20, left: 20, right: 20),
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
}
