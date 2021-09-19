import 'package:carsaweb/Mobile/MobileMainPage.dart';
import 'package:carsaweb/MobilePages/Signin.dart';
import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

import '../helpers.dart';

class MobileAccount extends StatefulWidget {
  @override
  _MobileAccountState createState() => _MobileAccountState();
}

class _MobileAccountState extends State<MobileAccount> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 500,
      color: Colors.white,
      child: ConstrainedBox(
        constraints: BoxConstraints(minHeight: 500),
        child: Container(
          child: IntrinsicHeight(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  width: 500,
                  color: Colors.white,
                  height: MediaQuery.of(context).size.height * 0.30,
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        CircleAvatar(
                          backgroundColor: Theme.of(context).primaryColor,
                          radius: 40,
                          child: Icon(
                            Icons.person,
                            size: 50,
                          ),
                        ),
                        SizedBox(
                          height: 40,
                        ),
                        Text(
                          user.name,
                          style: TextStyle(
                            fontSize: 30,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  "رقم الهاتف",
                  style:
                  TextStyle(fontSize: 15, color: mainColor),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  user.phone,
                  style:
                  TextStyle(fontSize: 15, color: Colors.black),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "البريد الالكتروني",
                  style:
                  TextStyle(fontSize: 15, color: mainColor),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  user.email,
                  style:
                  TextStyle(fontSize: 15, color: Colors.black),
                ),
                SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: 30,
                ),
                TextButton(
                  onPressed: (){
                    removeToken();
                  },
                  child: Text(
                    "تسجيل الخروج",
                    style:
                    TextStyle(fontSize: 15, color: Colors.red),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  removeToken() async {
    final storage = new FlutterSecureStorage();
    await storage.delete(
      key: 'token',
    );
   // await showSnackBar('تم تسجيل الخروج', context);
    token = "";
     pageChild.value = MobileSignin(false);

  }
}
