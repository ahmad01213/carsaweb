import 'package:carousel_slider/carousel_slider.dart';
import 'package:carsaweb/helpers.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [

        Container(
          padding: EdgeInsets.all(20),
          margin: EdgeInsets.symmetric(horizontal: 200),
          color: Colors.white,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CarouselSlider(
                  items: items
                      .map((e) => Image.network(
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
                height: 50,
                width: 350,
                margin: EdgeInsets.only(right: 600),

                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(0),
                    gradient: LinearGradient(
                        begin: Alignment.centerRight,
                        end: Alignment.centerLeft,
                        colors: [
                          mainColor.withOpacity(0.6),
                          mainColor,
                        ])),
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
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 700,
                    width: 400,
                    margin: EdgeInsets.all(30),
                    color: Colors.grey.withOpacity(0.3),
                  ),
                  Flexible(
                    child: GridView.builder(
                      padding: EdgeInsets.only(top: 20),
                      shrinkWrap: true,

                      physics: NeverScrollableScrollPhysics(),
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          childAspectRatio: 1/1.35,
                          crossAxisCount: 3),
                      itemBuilder: (_, index) => Container(
                        height: 300,

                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            border: Border.all(
                              width: 0.5,
                              color: Colors.grey,
                            ),
                            borderRadius: BorderRadius.circular(0)),
                        margin: EdgeInsets.all(10),
                        child: Column(
                          children: [
                            Image.network(
                              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSQdGhgHBHroNmMsrhs1u3jEgVtrTt2pF_Ajw&usqp=CAU',
                              height: 120,
                              width: double.infinity,
                              fit: BoxFit.cover,
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              "999 ريال",
                              style: TextStyle(
                                  fontSize: 18,
                                  color: mainColor,
                                  fontWeight: FontWeight.w500),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              "مقصات امامية كاملة",
                              style: TextStyle(
                                  fontSize: 18,
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
                                  "أضف للسلة",
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
                      itemCount: 6,
                    ),
                  ),
                ],
              )
            ],
          ),
        )
      ],
    );
  }

  final items = [
    'https://www.adv-motors.sa/uploads/slideshow/home/5e564738aa746069859bb137938d59a8.jpg',
    'https://www.adv-motors.sa/uploads/slideshow/home/715232ecd32de3589b495470948508aa.jpeg',
    'https://www.adv-motors.sa/uploads/slideshow/home/4c5144bb7d54cf8ab25fd9ebf4760a9e.jpeg',
    'https://www.adv-motors.sa/uploads/slideshow/home/8f42d8b15ae744efb1146feca565f4ef.jpeg',
  ];
}
