// ignore_for_file: sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:iot_third_mobile_project/views/login_ui.dart';
import 'package:iot_third_mobile_project/views/signup_ui.dart';

class WelcomeUI extends StatefulWidget {
  const WelcomeUI({super.key});

  @override
  State<WelcomeUI> createState() => _WelcomeUIState();
}

class _WelcomeUIState extends State<WelcomeUI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.1,
            ),
            Image.asset(
              'assets/images/logo.png',
              width: MediaQuery.of(context).size.width * 0.7,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.25,
            ),
            Text(
              'IoT SAU APP',
              style: TextStyle(
                fontSize: MediaQuery.of(context).size.height * 0.04,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'Welcome to IoT SAU APP',
            ),
            Text(
              'Created By Metaporn SAU',
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.035,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment
                  .center, //การเขยิบสิ่งที่อยู่ใน Row อยู่ตรงกลาง
              children: [
                OutlinedButton(
                  onPressed: () {
                    //เปิดหน้าจอแบบย้อนกลับได้
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => LoginUI(),
                      ),
                    );
                  },
                  child: Text(
                    'LOGIN',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  style: OutlinedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                        7.0,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.035,
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SignupUI(),
                      ),
                    );
                  },
                  child: Text(
                    'SIGNUP',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    fixedSize: Size(
                      125.0,
                      50.0,
                    ),
                    backgroundColor: Colors.black,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                        7.0,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
