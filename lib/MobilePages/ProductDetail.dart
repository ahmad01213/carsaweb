import 'package:carsaweb/Mobile/MobileMainPage.dart';
import 'package:carsaweb/MobilePages/MobileOrders.dart';
import 'package:carsaweb/MobilePages/Signin.dart';
import 'package:carsaweb/Models/Part.dart';
import 'package:carsaweb/helpers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
class MobileProductDetail extends StatefulWidget {
 Part part;

 MobileProductDetail(this.part);

  @override
  _MobileProductDetailState createState() => _MobileProductDetailState();
}

class _MobileProductDetailState extends State<MobileProductDetail> {
  @override
  Widget build(BuildContext context) {

    return Container(
      padding: EdgeInsets.all(5),
      width: 509,
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(5),
            margin: EdgeInsets.all(5),
            // height: 320,

            decoration: BoxDecoration(
                border: Border.all(width: 0.1,color: Colors.grey)
            ),
            child: Image.network(
              filesUrl+widget.part.image,
              height: 120,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          ),
          Container(
            padding: EdgeInsets.all(5),
            margin: EdgeInsets.all(5),
            decoration: BoxDecoration(
          border: Border.all(width: 0.1,color: Colors.grey)
            ),
            child: Row(
              children: [
              Container(
                height: 450,

                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,

                    children: [
                    buildRow("رقم القطعة", 0),
                    buildRow("رقم الهيكل", 0),
                    buildRow("السعر", 0),
                    buildRow("الموديل", 0),
                    buildRow("الشركة المصنعة", 0),
                    buildRow("اسم التاجر", 0),
                    buildRow("نوع القطعة", 0),
                    buildRow("تكلفة التوصيل", 0),
                    buildRow("الضريبة", 0),
                  ]
                ),
              ),
                SizedBox(width: 100,),
                Container(
                  height: 450,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        buildRow(widget.part.partNumber.toString(), 1),
                        buildRow(widget.part.chese, 1),
                        buildRow(widget.part.price.toString(), 1),
                        buildRow(widget.part.years, 1),
                        buildRow(widget.part.modle, 1),
                        buildRow(widget.part.owner , 1),
                        buildRow(widget.part.madeType, 1),
                        buildRow(widget.part.deliveryFee.toString(), 1),
                        buildRow(widget.part.tax.toString(), 1),

                      ]
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 10,),

          textFromField(
              icon: Icons.location_on,
              inputType: TextInputType.visiblePassword,

              hint: "اكتب عنوان التوصيل بالتفصيل",
              onChange:(v){
                address =v.toString();
              } ,
              password: false
          ),
          SizedBox(height: 40,),
          MaterialButton(
            onPressed: () {
             isRegistered()? sendOrder():pageChild.value = MobileSignin(false);
            },
            child: Container(
              height: 60,
              margin: EdgeInsets.all(10),
              width: 500,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  gradient: LinearGradient(
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter,
                      colors: [
                        Colors.orange.withOpacity(0.9),
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
          ),

        ],
      ),
    );
  }

  buildRow(title,color){
    return Container(
      height: 45,
      child: Column(
        children: [
          Text(
            title,
            maxLines: 1,
            style: TextStyle(
              color:color==0? mainColor:Colors.black54,
              fontWeight: FontWeight.bold,

            ),
          ),
          SizedBox(height: 10,)
        ],
      ),
    );
  }


  textFromField({password, hint, icon, inputType, onChange, initialValue}) {
    return Container(
      height: 60.0,
      alignment: AlignmentDirectional.center,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(7.0),
          color: Colors.white,
          border: Border.all(width:0.5)
      ),
      padding: EdgeInsets.only(left: 20.0, right: 30.0, top: 0.0, bottom: 0.0),
      child: Theme(
        data: ThemeData(
          hintColor: Colors.transparent,
        ),
        child: TextFormField(
          obscureText: password,
          initialValue: initialValue,
          onChanged: onChange,
          decoration: InputDecoration(
              border: InputBorder.none,
              labelText: hint,
              icon: Icon(
                icon,
                color: Colors.black38,
              ),
              labelStyle: TextStyle(
                  fontSize: 15.0,
                  fontFamily: 'default',
                  color: Colors.black38,
                  fontWeight: FontWeight.w600)),
          keyboardType: inputType,
        ),
      ),
    );
  }


  String address = "";
  bool isloading = false;
 postOrder() async {
   setState(() {
     isloading = true;
   });
   final url = "${baseUrl}/pick-order";
   final body = {
     'address': address,
     'seller_id': widget.part.sellerId.toString(),
     'location': "0.0,0.0",

   };
   final headers = {
     'Authorization': token,

   };
   final response = await http.post(Uri.parse(url), headers: headers, body: body);
   if (response.statusCode == 200) {
    pageChild.value =  MobileOrders();

   } else {
     print(response.body);
   }
   setState(() {
     isloading = false;
   });
 }

  sendOrder() async {
    setState(() {
      isloading = true;
    });
    final url = "${baseUrl}/add-to-cart";
    final body = {
    'part_id' : widget.part.id.toString(),
    'quantity':"1"
    };
    final headers = {
      'Authorization': token,

    };
    final response = await http.post(Uri.parse(url), headers: headers, body: body);
    if (response.statusCode == 200) {
      postOrder();
    } else {
      print(response.body);
    }

  }
}
