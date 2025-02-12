import 'package:flutter/material.dart';
import 'package:flutter_application_1/svscreen/signin.dart';

class bage5 extends StatefulWidget {
  const bage5({super.key});

  @override
  State<bage5> createState() => _bage5State();
}

class _bage5State extends State<bage5> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            //color: Colors.blue

            image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage("assets/image/photo_31.jpg"))),
        child: SingleChildScrollView(
          child: Column(children: [
            SizedBox(
              width: MediaQuery.of(context).size.width * 1.0,
              height: MediaQuery.of(context).size.height * .66,
            ),
            Row(
              children: [
                Text(
                  '    Lorem Ipsum Dolor    ',
                  style: TextStyle(
                    color: Color(0xFFE4D1B9),
                    fontSize: 24,
                    fontFamily: 'inter',
                    fontWeight: FontWeight.w600,
                    height: 2,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * .02,
            ),
            Text(
              'Lorem Ipsum Dolor Sit Amet, Consectetur \nAdipiscing Elit, Sed Do Eiusmod Tempor Incididunt \nUt Labore Et Dolore Magna Aliqua. Ut Enim Ad \nMinim Veniam     ',
              style: TextStyle(
                color: Color(0xFFE4D1B9),
                fontSize: 16,
                fontFamily: 'inter',
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * .05,
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => signin()),
                );
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    "Next",
                    style: TextStyle(
                      color: Color(0xFFE4D1B9),
                      fontSize: 24,
                      fontFamily: 'inter',
                      fontWeight: FontWeight.w500,
                      height: 1.50,
                    ),
                    textAlign: TextAlign.right,
                  ),
                  Text("      "),
                ],
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * .08,
            ),
          ]),
        ),
      ),
    );
  }
}
