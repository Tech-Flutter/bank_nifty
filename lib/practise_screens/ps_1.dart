import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'components/curve.dart';

class GreenTaxi extends StatelessWidget {
  const GreenTaxi({Key? key}) : super(key: key);

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
                          " Hello, nice to meet you!",
                          textAlign: TextAlign.start,
                          style: TextStyle(
                              fontWeight: FontWeight.normal, fontSize: 12),
                        ),
                        Text(
                          "Get moving with green taxi",
                          textAlign: TextAlign.start,
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
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
                              children: [
                                CountryCodePicker(
                                  onChanged: print,
                                  // Initial selection and favorite can be one of code ('IT') OR dial_code('+39')
                                  initialSelection: 'IN',
                                  favorite: ['+91', 'IN'],
                                  // optional. Shows only country name and flag
                                  showCountryOnly: false,
                                  // optional. Shows only country name and flag when popup is closed.
                                  showOnlyCountryWhenClosed: false,
                                  // optional. aligns the flag and the Text left
                                  alignLeft: false,
                                ),
                                Text('Enter your mobile number'),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: EdgeInsets.all(20.0),
                          child: RichText(
                            textAlign: TextAlign.center,
                            text: TextSpan(
                                text:
                                    'By creating an account, you agree to our',
                                style: TextStyle(
                                    color: Colors.grey.shade700, fontSize: 15),
                                children: <TextSpan>[
                                  TextSpan(
                                      text: ' \n Terms  of Service',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold)),
                                  TextSpan(
                                      text: ' and',
                                      style: TextStyle(
                                        color: Colors.grey.shade700,
                                        fontSize: 15,
                                      )),
                                  TextSpan(
                                      text: '  Privacy Policy',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold)),
                                ]),
                          ),
                        ),
                      ],
                    ),
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
