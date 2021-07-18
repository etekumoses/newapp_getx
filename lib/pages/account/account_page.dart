import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../constants.dart';
import 'account_controller.dart';

class AccountPage extends GetView<AccountController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
          centerTitle: true,
          elevation: 0,
         backgroundColor: Constants.COLOR_WHITE,
          title: Text(
            "Account",
            style: TextStyle(
                // fontFamily: Constants.POPPINS,
                fontWeight: FontWeight.bold,
                fontSize: 22.5,
                color:  Constants.primarycolor),
          ),
          titleSpacing: 0,
          iconTheme: IconThemeData(color: Constants.whitecolor),
          textTheme: Theme.of(context).textTheme,
          brightness: Theme.of(context).brightness,
        ),
      body: Container(
        child: Center(
          child: Text(
            "Account Page",
            style: TextStyle(fontSize: 20),
          ),
        ),
      ),
    );
  }
}