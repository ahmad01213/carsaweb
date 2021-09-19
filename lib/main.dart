import 'package:carsaweb/Mobile/MobileMainPage.dart';
import 'package:carsaweb/MobilePages/Home.dart';

import 'package:carsaweb/Models/DataProvider.dart';

import 'package:carsaweb/StartScreen.dart';
import 'package:carsaweb/helpers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(

      providers: [
        ChangeNotifierProvider<DataProvider>(create: (context) => DataProvider()),
      ],
      child: MaterialApp(
        title: 'Car sa',
        localizationsDelegates: [
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate
        ],
        supportedLocales: [
          Locale('ar', 'AE'), // OR Locale('ar', 'AE') OR Other RTL locales
        ],
        routes: {

          // '/home': (context) =>  MainPage(Home()),
          // '/search': (context) =>  MainPage(SearchPage()),
          // '/account': (context) =>  MainPage(Account()),
          // '/signin': (context) =>  MainPage(Signin(false)),
          // '/about': (context) =>  MainPage(AboutUs()),
          // '/terms': (context) =>  MainPage(Terms()),
          // '/support': (context) =>  MainPage(ContactUsScreen()),
        },
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primaryColor: mainColor,
          // fontFamily: "default",

          primarySwatch: Colors.blue,
        ),
        home:StartScreen(),
      ),
    );
  }
}

