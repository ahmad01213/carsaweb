import 'package:carsaweb/MobilePages/AboutUs.dart';
import 'package:carsaweb/MobilePages/Account.dart';
import 'package:carsaweb/MobilePages/Home.dart';
import 'package:carsaweb/MobilePages/MobileOrders.dart';
import 'package:carsaweb/MobilePages/Signin.dart';
import 'package:carsaweb/MobilePages/Terms.dart';
import 'package:carsaweb/widgets/SizedBoxWidget.dart';
import 'package:carsaweb/widgets/Texts.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';
import '../Models/DataProvider.dart';
import '../helpers.dart';
class MobileMainPage extends StatefulWidget {
  Widget childd;
  int index = 0;
  MobileMainPage(this.childd,this.index);
  @override
  _MobileMainPageState createState() => _MobileMainPageState();
}

var provider;

class _MobileMainPageState extends State<MobileMainPage> {
  Future<void> _makePhoneCall(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
  bottomsheet(context) => Container(
    height: 280,
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.only(
          topRight: Radius.circular(30), topLeft: Radius.circular(30)),
    ),
    child: Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 18.0,
      ),
      child: Column(
        children: [
          Box(10),
          Container(
            width: 24,
            height: 3,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.5),
              color: Color(0xFFDCDCDF),
            ),
          ),
          Box(30),
          Texts(
            title:"تواصل معنا",
            fSize: 18,
            color: Colors.black,
            weight: FontWeight.bold,
          ),
          Box(10),
          Container(
            height: 147,
            width: double.infinity,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () {
                    _makePhoneCall('tel:0532850193');
                  },
                  child: Container(
                    height: 147,
                    width: 147,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xFFF6F2F2),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.call,
                          size: 30,
                          color: mainColor,
                        ),
                        Box(10),
                        Texts(
                          lines: 2,
                          align: TextAlign.center,
                          title: "عبر الاتصال",
                          fSize: 16,
                          color: mainColor,
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
                InkWell(
                  onTap: () {
                    _makePhoneCall('https://wa.me/+9660532850193');

                  },
                  child: Container(
                    height: 147,
                    width: 147,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xFFF6F2F2),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.chat_outlined,
                          size: 30,
                          color: mainColor,
                        ),
                        Box(10),
                        Texts(
                          lines: 2,
                          align: TextAlign.center,
                          title: "عبر الواتس اب",
                          fSize: 16,
                          color: mainColor,
                        ),
                      ],
                    ),
                  ),
                ),
                Box(30)
              ],
            ),
          )
        ],
      ),
    ),
  );

  @override
  void initState() {
    super.initState();
    getUserLocation();
  }

  @override
  Widget build(BuildContext context) {
    if (provider == null) {
      provider = Provider.of<DataProvider>(context);
    }
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Image.asset(
              'assets/logo.png',
              height: 40,
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              "Car sa",
              style: TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10,
            ),
            InkWell(
              onTap: (){
         showSheet(context, bottomsheet(context));

              },
              child: Row(
                children: [
                  Container(
                    child: Icon(
                      Icons.call,
                      size: 15,
                      color: Colors.green,
                    ),
                    padding: EdgeInsets.all(3),
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: Colors.green, width: 1),
                        borderRadius: BorderRadius.circular(70)),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                    decoration: BoxDecoration(
                      border: Border.all(width: 0.12,color: Colors.black),
                      borderRadius: BorderRadius.circular(10)
                    ),
                    child: Text(
                      '0532850193',
                      style: TextStyle(
                          fontSize: 13,
                          color: Colors.green,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),

          ],
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 1,
      ),
      body: ListView(
        shrinkWrap: true,
        children: [

          // Container(
          //   height: 50,
          //   width: double.infinity,
          //   decoration: BoxDecoration(
          //       borderRadius: BorderRadius.circular(10),
          //       gradient: LinearGradient(
          //           begin: Alignment.topCenter,
          //           end: Alignment.bottomCenter,
          //           colors: [
          //             mainColor.withOpacity(0.8),
          //             mainColor,
          //           ])),
          //   child: ListView(
          //     scrollDirection: Axis.horizontal,
          //     shrinkWrap: true,
          //     children: [
          //       MouseRegion(
          //         cursor: SystemMouseCursors.click,
          //         child: Container(
          //           height: 50,
          //           width: 70,
          //           child: MaterialButton(
          //             padding: EdgeInsets.all(5),
          //             onPressed: () {
          //               // pushPage(context, MobileMainPage(Home()));
          //
          //             },
          //             hoverColor: Colors.blueAccent.withOpacity(
          //                 0.3), //<--- Here is where I would like to change the button color (to a slightly lighter shade.)
          //
          //             child: Text(
          //               "الرئيسية",
          //               style: TextStyle(
          //                   fontSize: 14,
          //                   color: Colors.white,
          //                   fontWeight: FontWeight.bold),
          //             ),
          //           ),
          //         ),
          //       ),
          //       MouseRegion(
          //         cursor: SystemMouseCursors.click,
          //         child: Container(
          //           height: 50,
          //           width: 70,
          //           child: MaterialButton(
          //             padding: EdgeInsets.all(5),
          //             onPressed: () {
          //               setState(() {
          //                 widget.child = MobileOrders();
          //               });
          //             },
          //             hoverColor: Colors.blueAccent.withOpacity(
          //                 0.3), //<--- Here is where I would like to change the button color (to a slightly lighter shade.)
          //
          //             child: Text(
          //               "طلباتي",
          //               style: TextStyle(
          //                   fontSize: 14,
          //                   color: Colors.white,
          //                   fontWeight: FontWeight.bold),
          //             ),
          //           ),
          //         ),
          //       ),
          //       MouseRegion(
          //         cursor: SystemMouseCursors.click,
          //         child: Container(
          //           height: 50,
          //           width: 70,
          //           child: MaterialButton(
          //             padding: EdgeInsets.all(5),
          //             onPressed: () {
          //               // pushPage(context, MobileMainPage(Account()));
          //               isRegistered()
          //                   ? widget.child = MobileAccount()
          //                   : widget.child = MobileSignin(false);
          //
          //               setState(() {});
          //             },
          //             hoverColor: Colors.blueAccent.withOpacity(
          //                 0.3), //<--- Here is where I would like to change the button color (to a slightly lighter shade.)
          //
          //             child: Text(
          //               "حسابي",
          //               style: TextStyle(
          //                   fontSize: 14,
          //                   color: Colors.white,
          //                   fontWeight: FontWeight.bold),
          //             ),
          //           ),
          //         ),
          //       ),
          //       MouseRegion(
          //         cursor: SystemMouseCursors.click,
          //         child: Container(
          //           height: 50,
          //           width: 70,
          //           child: MaterialButton(
          //             padding: EdgeInsets.all(5),
          //             onPressed: () {
          //               setState(() {
          //                 widget.child = MobileAboutUs();
          //               });
          //             },
          //             hoverColor: Colors.blueAccent.withOpacity(
          //                 0.3), //<--- Here is where I would like to change the button color (to a slightly lighter shade.)
          //
          //             child: Text(
          //               "من نحن",
          //               style: TextStyle(
          //                   fontSize: 14,
          //                   color: Colors.white,
          //                   fontWeight: FontWeight.bold),
          //             ),
          //           ),
          //         ),
          //       ),
          //       MouseRegion(
          //         cursor: SystemMouseCursors.click,
          //         child: Container(
          //           height: 50,
          //           width: 70,
          //           child: MaterialButton(
          //             padding: EdgeInsets.all(5),
          //             onPressed: () {
          //               setState(() {
          //                 widget.child = MobileTerms();
          //               });
          //             },
          //             hoverColor: Colors.blueAccent.withOpacity(
          //                 0.3), //<--- Here is where I would like to change the button color (to a slightly lighter shade.)
          //
          //             child: Text(
          //               "الشروط ",
          //               style: TextStyle(
          //                   fontSize: 14,
          //                   color: Colors.white,
          //                   fontWeight: FontWeight.bold),
          //             ),
          //           ),
          //         ),
          //       ),
          //       // MouseRegion(
          //       //   cursor: SystemMouseCursors.click,
          //       //   child: Container(
          //       //     height: 50,
          //       //     width: 100,
          //       //     child: MaterialButton(
          //       //       padding: EdgeInsets.all(5),
          //       //       onPressed: () {
          //       //         pushPage(context, MobileMainPage(ContactUsScreen()));
          //       //       },
          //       //       hoverColor: Colors.blueAccent.withOpacity(
          //       //           0.3), //<--- Here is where I would like to change the button color (to a slightly lighter shade.)
          //       //
          //       //       child: Text(
          //       //         "الدعم الفني",
          //       //         style: TextStyle(
          //       //             fontSize: 14,
          //       //             color: Colors.white,
          //       //             fontWeight: FontWeight.bold),
          //       //       ),
          //       //     ),
          //       //   ),
          //       // ),
          //     ],
          //   ),
          // ),
          ValueListenableBuilder(
            valueListenable: pageChild,
            builder: (context,Widget child, widget) {
              return child;
            },
          ),        ],
      ),
      bottomNavigationBar: BottomNavBar()
    );
  }
}

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: mainColor,
      child: BottomNavigationBar(
        unselectedItemColor: Colors.white,
        currentIndex:index ,
        backgroundColor: mainColor,
        onTap: (i){
          pageChild.value =pages[i];
               if(index!=i)   setState(() {
                    index=i;

                  });
        },
        selectedItemColor: Colors.orange,
        showUnselectedLabels: true,
        selectedLabelStyle: TextStyle(color: Colors.orange),
        // unselectedLabelStyle: TextStyle(color: Colors.white),
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            backgroundColor: mainColor,
            label: "الرئيسية",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.featured_play_list_rounded),
            label: "طلباتي",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: "حسابي",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.supervised_user_circle_outlined),
            label: "من نحن",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.privacy_tip_rounded),
            label: "الشروط",
          ),
        ],
      ),
    );
  }
  List pages  = [
    MobileHome(),
    token==""? MobileSignin(false):MobileOrders(),
    token==""? MobileSignin(false):MobileAccount(),
    MobileAboutUs(),
    MobileTerms()

  ];
}

