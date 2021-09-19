import 'dart:convert';
import 'package:carsaweb/Models/Part.dart';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import '../helpers.dart';
import 'User.dart';
class DataProvider extends ChangeNotifier{
  List<Part> parts = [];
  getParts({context}) async {
    final url = "$baseUrl/site-get-parts";
    final response = await http.get(Uri.parse(url));
    print(response.body);
    if (response.statusCode == 200) {
      parts = [];
      final data = jsonDecode(response.body);
      data.forEach((element) {
        parts.add(Part.fromJson(element));
      });
    } else {
    }
    notifyListeners();
  }


  List<Part> searchParts = [];
  searchInParts({context,text,onComplete}) async {
    searchParts.clear();
    final url = "$baseUrl/site-search-parts";
    final body = {
      "text":searchText
    };
    final response = await http.post(Uri.parse(url),body: body);
    print(response.body);
    if (response.statusCode == 200) {
      searchParts.clear();
      final data = jsonDecode(response.body);
      data.forEach((element) {
        searchParts.add(Part.fromJson(element));
      });
    } else {
    }
    notifyListeners();
  }

}