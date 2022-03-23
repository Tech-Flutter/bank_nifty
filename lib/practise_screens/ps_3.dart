import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import 'components/curve.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                ClipPath(
                  clipper: CurvedBottomClipper(),
                  child: Container(
                    width: double.infinity,
                    height: 400.0,
                    color: Color(0xff2DBB54),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(0.0, 20.0, 0.0, 0.0),
                  child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(20.0),
                        child: FloatingActionButton(
                          onPressed: () {},
                          child: Icon(
                            Icons.arrow_back,
                            color: Color(0xff2DBB54),
                            size: 22,
                          ),
                          backgroundColor: Colors.white,
                        ),
                      ),
                      Text(
                        "You are in place!",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 300, 0, 0),
                  child: Center(
                    child: Container(
                      height: 160,
                      width: 160,
                      child: CircleAvatar(
                        radius: 30.0,
                        backgroundImage: NetworkImage(
                            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS1VvqwlDjUJ6i1fiQpWJgvnEPFjdksQEde-KEjCx66skt39oib1QtroMgS8W-_Ihu8P6Q&usqp=CAU"),
                        backgroundColor: Colors.transparent,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(top: 20.0),
              child: Center(
                child: Column(
                  children: [
                    Text(
                      "Your Driver:",
                      style: TextStyle(color: Colors.grey, fontSize: 14),
                    ),
                    Text("Wasilij Smith",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 23,
                            fontWeight: FontWeight.bold)),
                    Padding(
                      padding: EdgeInsets.only(top: 10),
                      child: Divider(
                        height: 3,
                        color: Colors.grey,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(10, 20, 10, 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Description(
                            heading: 'Time:',
                            text: '15 min',
                          ),
                          Description(
                            heading: 'Price:',
                            text: '\$ 99,99',
                          ),
                          Description(
                            heading: 'Distance:',
                            text: '15 km',
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 10),
                      child: Divider(
                        height: 5,
                        color: Colors.grey,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 10),
                      child: Text(
                        "Mark,",
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 16,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 10),
                      child: Text(
                        "How is your trip ?",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 26,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 20),
                      child: RatingBar.builder(
                        initialRating: 3,
                        minRating: 1,
                        direction: Axis.horizontal,
                        allowHalfRating: true,
                        itemCount: 5,
                        itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                        itemBuilder: (context, _) => Icon(
                          Icons.star,
                          color: Colors.green,
                        ),
                        onRatingUpdate: (rating) {
                          print(rating);
                        },
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(20),
                      child: Container(
                        height: 100,
                        width: double.infinity,
                        child: Card(
                          child: Padding(
                              padding: EdgeInsets.all(10),
                              child: Text(
                                "Additional comment",
                                style: TextStyle(
                                  color: Colors.grey,
                                ),
                              )),
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          "Submit",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: Colors.green),
                        ),
                        Padding(
                          padding: EdgeInsets.all(10.0),
                          child: FloatingActionButton(
                            onPressed: () {},
                            child: Transform.rotate(
                              angle: 110,
                              child: Icon(
                                Icons.arrow_back,
                                color: Colors.white,
                                size: 22,
                              ),
                            ),
                            backgroundColor: Colors.green,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    ));
  }
}

class Description extends StatelessWidget {
  const Description({
    Key? key,
    required this.heading,
    required this.text,
  }) : super(key: key);
  final String heading;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          heading,
          style: TextStyle(
            color: Colors.grey,
            fontSize: 16,
          ),
        ),
        Padding(
            padding: EdgeInsets.only(top: 10),
            child: Text(
              text,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ))
      ],
    );
  }
}
