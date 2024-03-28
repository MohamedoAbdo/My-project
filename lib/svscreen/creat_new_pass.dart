import 'package:flutter/material.dart';
import 'package:flutter_application_1/svscreen/signin.dart';

class CreatNEWPass extends StatelessWidget {
  const CreatNEWPass({super.key});

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
            child: Text('Create New Password',
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
            height: MediaQuery.of(context).size.height * .090,
            child: Column(
              children: [
                Text(
                  ' your new password must be different \n from previous used passwords.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFFBE8C63),
                    fontSize: 16,
                    fontFamily: 'inter',
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * .032,
                ),
              ],
            ),
          ),

          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: TextFormField(
              cursorColor: Color(0xffBE8C63),
              onChanged: (value) => print(value),
              decoration: InputDecoration(
                // border:InputBorder.none ,
                prefixIcon: Icon(
                  Icons.email,
                  color: Color(0xffBE8C63),
                ),
                label: Text(
                  'Password',
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
          SizedBox(),
          //Padding(padding: EdgeInsets.symmetric(vertical: 10)),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: TextFormField(
              cursorColor: Color(0xffBE8C63),
              onChanged: (value) => print(value),
              decoration: InputDecoration(
                // border:InputBorder.none ,
                prefixIcon: Icon(
                  Icons.adb,
                  color: Color(0xffBE8C63),
                ),
                label: Text(
                  'Confirm Password',
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
                  MaterialPageRoute(builder: (context) => signin()),
                );
              },
              child: Container(
                  child: Text(
                    'Reset Password',
                    style: TextStyle(
                      color: Color(0xFFE4D1B9),
                      fontSize: 16,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w600,
                      height: 0,
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
                      ]))),
          SizedBox(
            height: MediaQuery.of(context).size.height * .020,
          ),
        ]));
  }
}
