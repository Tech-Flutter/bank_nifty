import 'package:flutter/material.dart';

import 'components/curve.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: SingleChildScrollView(
        child: Column(
          children: [
            ClipPath(
              clipper: CurvedBottomClipper(),
              child: Container(
                width: double.infinity,
                height: 400.0,
                color: Color(0xff2DBB54),
                child: Stack(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(20.0),
                      child: FloatingActionButton(
                        onPressed: () {},
                        child: Icon(
                          Icons.arrow_back,
                          color: Color(0xff2DBB54),
                          size: 25,
                        ),
                        backgroundColor: Colors.white,
                      ),
                    ),
                    Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.local_taxi,
                            size: 60,
                            color: Colors.white,
                          ),
                          Padding(
                            padding: EdgeInsets.all(20.0),
                            child: Text(
                              "Green Taxi",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 36.0,
                                  color: Colors.white),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(10.0, 50.0, 5.0, 0.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                // mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(20.0, 50.0, 5.0, 0.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          " Phone Verification ",
                          textAlign: TextAlign.start,
                          style: TextStyle(
                              fontWeight: FontWeight.normal, fontSize: 12),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
                          child: Text(
                            "Enter your OTP code below",
                            textAlign: TextAlign.start,
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(10.0, 20.0, 10.0, 10.0),
                    child: Card(
                      elevation: 10,
                      shadowColor: Colors.grey,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.all(10.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(' • • •  • • •  • • •  • • • '),
                                FloatingActionButton(
                                  onPressed: () {},
                                  child: Transform.rotate(
                                    angle: 110,
                                    child: Icon(
                                      Icons.arrow_back,
                                      color: Colors.white,
                                      size: 25,
                                    ),
                                  ),
                                  backgroundColor: Color(0xff2DBB54),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(20.0, 10.0, 10.0, 10.0),
                    child: RichText(
                        text: TextSpan(
                            text: "Resend in",
                            style: TextStyle(
                                color: Colors.grey.shade700, fontSize: 15),
                            children: <TextSpan>[
                          TextSpan(
                              text: ' 60 seconds',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold)),
                        ])),
                  ),
                  Center(
                    child: Container(
                        alignment: Alignment.bottomCenter,
                        height: 5.0,
                        width: 80.0,
                        child: Divider(color: Colors.grey)),
                  ),
                ],
              ),
            )
          ],
        ),
      )),
    );
  }
}
