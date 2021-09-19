import 'dart:convert';
import 'package:carsaweb/Mobile/MobileMainPage.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import '../Models/Part.dart';
import '../helpers.dart';
import 'ProductDetail.dart';

class MobileSearchPage extends StatefulWidget {

  @override
  _MobileSearchPageState createState() => _MobileSearchPageState();
}
List mobilelist = [];

class _MobileSearchPageState extends State<MobileSearchPage> {

  @override
  Widget build(BuildContext context) {

    print("hey");
    if(mobilelist.isEmpty){
      searchInParts(context: context);

    }
    return   GridView.builder(
      padding: EdgeInsets.only(top: 20),
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          childAspectRatio: 1 / 1.65,
          crossAxisCount: 2),
      itemBuilder: (_, index) {
        Part part = mobilelist[index];

        return   MaterialButton(
          hoverColor: mainColor.withOpacity(0.1),
          padding: EdgeInsets.all(0),
          onPressed: () {
            pageChild.value =  MobileProductDetail(part);

          },
          child: Container(
            height: 320,

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
                  filesUrl+ part.image,
                  height: 120,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
                SizedBox(
                  height: 20,
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
                  height: 20,
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
      itemCount: mobilelist.length,
    );

  }

  searchInParts({context}) async {
    mobilelist.clear();
    final url = "$baseUrl/site-search-parts";
    final body = {
      "text":searchText
    };
    final response = await http.post(Uri.parse(url),body: body);
    print(response.body);
    if (response.statusCode == 200) {
      mobilelist.clear();
      final data = jsonDecode(response.body);
      data.forEach((element) {
        mobilelist.add(Part.fromJson(element));
      });
      setState(() {

      });
    } else {
    }
  }
}


