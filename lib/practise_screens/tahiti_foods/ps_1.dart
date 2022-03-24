import 'package:flutter/material.dart';

class ChooseLanguage extends StatelessWidget {
  const ChooseLanguage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool selected = true;

    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSuNGM0vL1wT-xpHL0sH3QUP2DetgaUc_clBQ&usqp=CAU"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Choose Language",
              style: TextStyle(
                  fontWeight: FontWeight.bold, fontSize: 18, color: Colors.red),
            ),
            Padding(
              padding: EdgeInsets.only(top: 27),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    height: 100,
                    width: 130,
                    child: Card(
                      child: InkWell(
                        splashColor: Colors.blue.withAlpha(30),
                        onTap: () {
                          print("card tapped");
                        },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.flag,
                              size: 25,
                            ),
                            Text("French")
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 100,
                    width: 130,
                    child: Card(
                      shape: selected
                          ? new RoundedRectangleBorder(
                              side:
                                  new BorderSide(color: Colors.red, width: 2.0),
                              borderRadius: BorderRadius.circular(4.0))
                          : new RoundedRectangleBorder(
                              side: new BorderSide(
                                  color: Colors.white, width: 2.0),
                              borderRadius: BorderRadius.circular(4.0)),
                      child: InkWell(
                        splashColor: Colors.blue.withAlpha(30),
                        onTap: () {
                          print("card tapped");
                        },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.flag,
                              size: 25,
                            ),
                            Text("English")
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
