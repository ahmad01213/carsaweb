
import 'Part.dart';

class Order {
   int id=0;
  List<dynamic> parts=[];
  Order.fromJson(json){
    this.id = json['id'];
    parts = json['parts']
        .map((part) => Part.fromJson(part))
        .toList() ;
  }
}
