import 'package:flutter/material.dart';
import 'package:iot_third_mobile_project/views/welcome_ui.dart';

void main(){
  runApp(
    //เรียกใช้ Class ที่เรียกใช้งาน Widget หลักของแอปฯ : MeterialApp()
    IoTTHIRDMOBILE(),
  );
}
//+++++++++++++++++++++++++++++++++++++
class IoTTHIRDMOBILE extends StatefulWidget {
  const IoTTHIRDMOBILE({super.key});

  @override
  State<IoTTHIRDMOBILE> createState() => _IoTTHIRDMOBILEState();
}

class _IoTTHIRDMOBILEState extends State<IoTTHIRDMOBILE> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: WelcomeUI(),
    );
  }
}