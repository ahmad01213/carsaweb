import 'package:carousel_slider/carousel_slider.dart';
import 'package:carsaweb/Mobile/MobileMainPage.dart';
import 'package:carsaweb/MobilePages/SearchPage.dart';
import 'package:carsaweb/Models/DataProvider.dart';
import 'package:carsaweb/helpers.dart';
import 'package:carsaweb/widgets/SizedBoxWidget.dart';
import 'package:carsaweb/widgets/Texts.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:provider/provider.dart';

import '../Models/Part.dart';
import 'ProductDetail.dart';

class MobileHome extends StatelessWidget {
  var _provider;

  @override
  Widget build(BuildContext context) {
    if (_provider == null) {
      _provider = Provider.of<DataProvider>(context);
      _provider.getParts(context: context);
    }
    return Column(
      children: [
        Container(
          padding: EdgeInsets.all(5),
          width: 1300,
          color: Colors.white,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 50,
                margin: EdgeInsets.symmetric(horizontal: 10,vertical: 15),
                child: TextField(
                  decoration: new InputDecoration(
                      border: new OutlineInputBorder(
                          borderSide: new BorderSide(color: Colors.teal)),
                      hintText: 'بحث',
                      suffixIcon: IconButton(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        icon: Icon(
                          Icons.search,
                          color: Colors.green,
                        ),
                        onPressed: () {
                          mobilelist.clear();
                          // pushPage(context, MobileMainPage(SearchPage()));

                          pageChild.value = MobileSearchPage();
                        },
                      ),
                      suffixStyle: const TextStyle(color: Colors.green)),
                  onChanged: (v) {
                    searchText = v.toString();
                  },
                ),
              ),
              CarouselSlider(
                  items: items
                      .map((e) => Image.asset(
                            e,
                            height: 400,
                            width: double.infinity,
                            fit: BoxFit.cover,
                          ))
                      .toList(),
                  options: CarouselOptions(
                    height: 400,
                    aspectRatio: 16 / 9,
                    viewportFraction: 1,
                    initialPage: 0,
                    enableInfiniteScroll: true,
                    reverse: false,
                    autoPlay: true,
                    autoPlayInterval: Duration(seconds: 5),
                    autoPlayAnimationDuration: Duration(milliseconds: 800),
                    autoPlayCurve: Curves.fastOutSlowIn,
                    enlargeCenterPage: true,
                    scrollDirection: Axis.horizontal,
                  )),
              SizedBox(
                height: 50,
              ),
              Container(
                width: double.infinity,
                margin: EdgeInsets.all(10),
                color: Colors.grey.withOpacity(0.3),
                child: GridView.builder(
                  padding: EdgeInsets.only(top: 20),
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      childAspectRatio: 1.3 / 1, crossAxisCount: 2),
                  itemBuilder: (_, index) => MaterialButton(
                    onPressed: () {
                      mobilelist.clear();

                      searchText = brands[index]['name'].toString();

                      pageChild.value = MobileSearchPage();
                    },
                    child: Container(
                        margin:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(0)),
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: ClipRRect(
                                borderRadius: BorderRadius.circular(30),
                                child: Image.asset(
                                  brands[index]['image'].toString(),
                                  width: 200,
                                  fit: BoxFit.fill,
                                )),
                          ),
                        )),
                  ),
                  itemCount: brands.length,
                ),
              ),
              Container(
                height: 50,
                width: 350,
                margin: EdgeInsets.only(right: 600),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(0),
                    gradient: LinearGradient(
                        begin: Alignment.centerRight,
                        end: Alignment.centerLeft,
                        colors: [Colors.white, Colors.white])),
                child: Center(
                  child: Text(
                    "أضيفت حديثا",
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              GridView.builder(
                padding: EdgeInsets.only(top: 20),
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    childAspectRatio: 1 / 1.75, crossAxisCount: 2),
                itemBuilder: (_, index) {
                  Part part = _provider.parts[index];
                  return MaterialButton(
                    hoverColor: mainColor.withOpacity(0.1),
                    padding: EdgeInsets.all(0),
                    onPressed: () {
                      pageChild.value = MobileProductDetail(part);

                    },
                    child: Container(
                      height: 330,
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          border: Border.all(
                            width: 0.5,
                            color: Colors.grey,
                          ),
                          borderRadius: BorderRadius.circular(0)),
                      margin: EdgeInsets.all(5),
                      child: Column(
                        children: [
                          Image.network(
                            filesUrl + part.image,
                            height: 120,
                            width: double.infinity,
                            fit: BoxFit.cover,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "${part.price} ريال",
                            maxLines: 1,
                            style: TextStyle(
                                fontSize: 14,
                                color: mainColor,
                                fontWeight: FontWeight.w500),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            part.partName,
                            maxLines: 1,
                            style: TextStyle(
                                fontSize: 12,
                                color: Colors.black,
                                fontWeight: FontWeight.w300),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Container(
                            height: 50,
                            margin: EdgeInsets.all(10),
                            width: 300,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(0),
                                gradient: LinearGradient(
                                    begin: Alignment.bottomCenter,
                                    end: Alignment.topCenter,
                                    colors: [
                                      Colors.orange.withOpacity(0.7),
                                      Colors.orange,
                                    ])),
                            child: Center(
                              child: Text(
                                "اطلب القطعة",
                                style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
                itemCount: _provider.parts.length,
              ),
            ],
          ),
        )
      ],
    );
  }

  final brands = [
    {"name": "تويوتا", "image": "assets/toyota.png"},
    {"name": "كيا", "image": "assets/kia.png"},
    {"name": "لكزس", "image": "assets/lexus.png"},
    {"name": "هوندا", "image": "assets/honda.png"},
    {"name": "هونداي", "image": "assets/hyundai.png"},
    {"name": "نيسان", "image": "assets/nissan.png"},
    {"name": "مازدا", "image": "assets/mazda.png"},
  ];
  final items = [
    'assets/slid1.jpg',
    'assets/slide2.jpeg',
    'assets/slide3.jpeg',
    'assets/slide4.jpeg',
  ];
}
