import 'package:carsaweb/Home.dart';
import 'package:flutter/material.dart';

import 'helpers.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          shrinkWrap: true,
          children: [
            Container(
              height: 100,
              width: double.infinity,
              color: Colors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                Row(
                  children: [
                  Image.asset('assets/logo.png',height: 80,),
                  SizedBox(width: 30,),
                  Text(
                    "اطلب قطع غيار سيارتك",
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                ],),
                   Container(
                     width: 500,
                     height: 70,
                     child: TextField(
                      decoration: new InputDecoration(
                          border: new OutlineInputBorder(
                              borderSide: new BorderSide(color: Colors.teal)),
                          hintText: 'ابحث برقم القطعة ، اسم القطعة ،نوع السيارة',
                          prefixIcon: const Icon(
                            Icons.search,
                            color: Colors.green,
                          ),
                          suffixStyle: const TextStyle(color: Colors.green)),
                  ),
                   ),

                ],
              ),
            ),
            Container(
              height: 50,
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        mainColor.withOpacity(0.8),
                        mainColor,
                      ])),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  MouseRegion(
                    cursor: SystemMouseCursors.click,
                    child: Container(
                      height: 50,
                      width: 90,
                      child: MaterialButton(
                        onPressed: () {},
                        hoverColor: Colors.blueAccent.withOpacity(
                            0.3), //<--- Here is where I would like to change the button color (to a slightly lighter shade.)

                        child: Text(
                          "الرئيسية",
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                  MouseRegion(
                    cursor: SystemMouseCursors.click,
                    child: Container(
                      height: 50,
                      width: 90,
                      child: MaterialButton(
                        onPressed: () {},
                        hoverColor: Colors.blueAccent.withOpacity(
                            0.3), //<--- Here is where I would like to change the button color (to a slightly lighter shade.)

                        child: Text(
                          "طلباتي",
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                  MouseRegion(
                    cursor: SystemMouseCursors.click,
                    child: Container(
                      height: 50,
                      width: 90,
                      child: MaterialButton(
                        onPressed: () {},
                        hoverColor: Colors.blueAccent.withOpacity(
                            0.3), //<--- Here is where I would like to change the button color (to a slightly lighter shade.)

                        child: Text(
                          "حسابي",
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                  MouseRegion(
                    cursor: SystemMouseCursors.click,
                    child: Container(
                      height: 50,
                      width: 90,
                      child: MaterialButton(
                        onPressed: () {},
                        hoverColor: Colors.blueAccent.withOpacity(
                            0.3), //<--- Here is where I would like to change the button color (to a slightly lighter shade.)

                        child: Text(
                          "من نحن",
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                  MouseRegion(
                    cursor: SystemMouseCursors.click,
                    child: Container(
                      height: 50,
                      width: 160,
                      child: MaterialButton(
                        onPressed: () {},
                        hoverColor: Colors.blueAccent.withOpacity(
                            0.3), //<--- Here is where I would like to change the button color (to a slightly lighter shade.)

                        child: Text(
                          "الشروط والأحكام",
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                  MouseRegion(
                    cursor: SystemMouseCursors.click,
                    child: Container(
                      height: 50,
                      width: 140,
                      child: MaterialButton(
                        onPressed: () {},
                        hoverColor: Colors.blueAccent.withOpacity(
                            0.3), //<--- Here is where I would like to change the button color (to a slightly lighter shade.)

                        child: Text(
                          "الدعم الفني",
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Home(),
          ],
        ),
      ),
    );
  }
}
