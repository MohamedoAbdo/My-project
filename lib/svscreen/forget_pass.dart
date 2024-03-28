import 'package:flutter/material.dart';
import 'package:flutter_application_1/svscreen/verification.dart';

class ForgetPass extends StatelessWidget {
  ForgetPass({super.key});
  final forKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 80,
          ),
          Center(
            child: Text('Forget Password',
                style: TextStyle(
                  color: Color(0xff6C3428),
                  fontSize: 32,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w600,
                )),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * .016,
          ),
          Container(
            width: MediaQuery.of(context).size.height * .392,
            height: MediaQuery.of(context).size.height * .051,
            child: Column(
              children: [
                Text(
                  'Enter Your Email To Send You A Message To \n Reset Your New Password.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFFBE8C63),
                    fontSize: 16,
                    fontFamily: 'inter',
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * .032,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: TextFormField(
              onChanged: (value) => print(value),
              decoration: InputDecoration(
                // border:InputBorder.none ,
                prefixIcon: Icon(
                  Icons.email,
                  color: Color(0xffBE8C63),
                ),
                label: Text(
                  'E-Mail',
                  style: TextStyle(
                    color: Color(0xFFBE8C63),
                    fontSize: 16,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w500,
                    height: 0.09,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * .064,
          ),
          InkWell(
            onTap: () async {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => verification()),
              );
            },
            child: Container(
                child: Text(
                  'Send Mail',
                  style: TextStyle(
                    color: Color(0xFFE4D1B9),
                    fontSize: 16,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w500,
                  ),
                ),
                width: MediaQuery.of(context).size.height * .174,
                height: MediaQuery.of(context).size.height * .055,
                padding:
                    const EdgeInsets.symmetric(horizontal: 64, vertical: 16),
                decoration: ShapeDecoration(
                    color: Color(0xFFBE8C63),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    shadows: [
                      BoxShadow(
                        color: Color(0x266C3428),
                        blurRadius: 20,
                        offset: Offset(0, 4),
                        spreadRadius: 0,
                      )
                    ])),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * .020,
          ),
        ],
      ),
    );
  }
}
