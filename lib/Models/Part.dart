class Part {
  late int id;
  late String partName;
  late String partNumber;
  late String chese;
  late int sellerId;
  late String years;
  late String modle;
  late int discount;
  late int price;
  late int category;
  late String image;
  late  String type;
  late String metaType;
  late String payType;
  late int tax;
  late String city;
  late String owner;
  late int deliveryFee;
  late String madeType;


   Part.fromJson( json) {
    id = json['id'];
    partName = json['part_name'];
    partNumber = json['part_number'];
    chese = json['chese'];
    owner = json['owner'];
    sellerId = json['seller_id'];
    years = json['years'];
    modle = json['modle'];
    discount = json['discount'];
    price = json['price'];
    category = json['category'];
    image = json['image'];
    type = json['type'];
    metaType = json['meta_type'];
    payType = json['pay_type'];
    tax = json['tax'];
    city = json['city'];
    deliveryFee = json['delivery_fee'];
    madeType = json['made_type'];
  }
}
