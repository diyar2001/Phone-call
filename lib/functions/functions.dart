import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';

class functions {
  static callNumber() async {
    const number = '2555'; //set the number here
    bool? res = await FlutterPhoneDirectCaller.callNumber(number);
  }
}
