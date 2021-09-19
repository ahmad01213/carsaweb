import 'package:carsaweb/helpers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

import 'Mobile/MobileMainPage.dart';
import 'MobilePages/Home.dart';
import 'Models/User.dart';


class StartScreen extends StatefulWidget {
  const StartScreen({Key? key}) : super(key: key);

  @override
  _StartScreenState createState() => _StartScreenState();
}


class _StartScreenState extends State<StartScreen> {
  initData() async {
    var screenWidth =await MediaQuery.of(context).size.width;

    if(screenWidth<900){
      replacePage(context, MobileMainPage(MobileHome(),0));

    }else{
      replacePage(context, MobileMainPage(MobileHome(),0));
    }
  }

  readToken() async {
    final storage = new FlutterSecureStorage();
    token = await storage.read(key: "token") ?? "";
    String name = await storage.read(key: "name") ?? "";
    String phone = await storage.read(key: "phone")?? "";
    String email = await storage.read(key: "email")?? "";
    user = User(name: name,phone: phone,email:email );
    print('token$token');
  }
  @override
  Widget build(BuildContext context) {
    initData();
    return Container();
  }
  @override
  void initState() {
    readToken();

    super.initState();

  }

}
