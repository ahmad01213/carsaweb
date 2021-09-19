import 'dart:convert';

import 'package:carsaweb/Mobile/MobileMainPage.dart';
import 'package:carsaweb/MobilePages/ProductDetail.dart';
import 'package:carsaweb/MobilePages/Signin.dart';
import 'package:flutter/material.dart';

import 'package:http/http.dart' as http;

import '../Models/Order.dart';
import '../Models/Part.dart';
import '../helpers.dart';
class MobileOrders extends StatefulWidget {
  @override
  _MobileOrdersState createState() => _MobileOrdersState();
}
class _MobileOrdersState extends State<MobileOrders> {
  @override
  Widget build(BuildContext context) {
    return !isRegistered()?MobileSignin(false): isLoading?Container(): Container(
      width: 500,
      child: ListView.builder(
        shrinkWrap: true,
          itemCount: orders.length,
          padding: EdgeInsets.symmetric(vertical: 20),
          itemBuilder: (ctx, i) {
            Order order = orders[i];
            return Container(
              width: 500,
              height: 210,
              margin: EdgeInsets.symmetric(horizontal: 20),
              child: MaterialButton(
                padding: EdgeInsets.only(top: 40),
                onPressed: (){
                  pageChild.value = MobileProductDetail(order.parts[0]);
                },
                child: Card(

                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Center(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'رقم الطلب     ${order.id}',
                            style: TextStyle(
                                fontSize: 18,
                                color: mainColor,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 15,),
                          order.parts.length > 0
                              ? Container(
                            height: 70,
                            child: ListView.builder(
                                itemCount: order.parts.length,
                                padding: EdgeInsets.symmetric(horizontal: 20),
                                scrollDirection: Axis.horizontal,
                                itemBuilder: (ctx, index) {
                                  Part part = order.parts[index];
                                  return Row(
                                    children: [
                                      Image.network(
                                        filesUrl + part.image,
                                        height: 70,
                                        width: 70,
                                        fit: BoxFit.cover,
                                      ),
                                      SizedBox(
                                        width: 30,
                                      ),
                                      Container(
                                        child: Text(
                                          part.partName,
                                          style: TextStyle(
                                              fontSize: 15,
                                              color: Colors.black45),
                                          maxLines: 2,
                                        ),
                                        width: 150,
                                      ),
                                    ],
                                  );
                                }),
                          )
                              : Container(),

                        ],
                      ),
                    ),
                  ),
                ),
              ),
            );
          }),
    );
  }

  initState() {
    if(isRegistered()) getUserOrder();
    super.initState();
  }

  bool isLoading = false;
  List<Order> orders = [];

  getUserOrder() async {
    setState(() {
      isLoading = true;
    });
    final headers = {
      'Authorization': token,
    };
    final url = "${baseUrl}/get-user-orders";
    final response = await http.post(Uri.parse(url), headers: headers);
    print('token : ${response.body}');
    final extractedData = json.decode(response.body) as List<dynamic>;
    orders.clear();
    extractedData.forEach((item) {
      orders.add(Order.fromJson(item));
    });
    setState(() {
      isLoading = false;
    });
  }
}
