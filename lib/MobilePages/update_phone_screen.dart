import 'package:carsaweb/Mobile/MobileMainPage.dart';
import 'package:carsaweb/helpers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:http/http.dart' as http;

import 'Account.dart';


class UpdatePhone extends StatefulWidget {
  @override
  _UpdatePhoneState createState() => _UpdatePhoneState();
}

class _UpdatePhoneState extends State<UpdatePhone> {
  late String phone;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar(
          backgroundColor: mainColor,
          iconTheme: IconThemeData(
            color: Colors.white, //change your color here
          ),
          brightness: Brightness.dark,
          title: Row(
            children: [
              Image.asset(
                'assets/logo.png',
                height: 20,
                width: 20,
                color: Colors.white,
              ),
              SizedBox(
                width: 20,
              ),
              Text(
                'إضافة رقم هاتف',
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
            ],
          ),
        ),
        body:Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(children: [
            SizedBox(height: 140,),

            textFromField(
                hint: 'اكتب رقم الهاتف',
                icon: Icons.account_circle,
                inputType: TextInputType.number,
                onChange: (value){
                  phone = value;
                },
                password: false),
            SizedBox(height: 40,),
            InkWell(
              onTap: (){
                if(phone!=null&&phone.isNotEmpty){
                  updatephone();
                }
              },
              child: Container(
                height: 60,
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [Color(0xFFf1c40f), Color(0xFFf39c12)])),
                child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'تأكيد',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        isloading
                            ? SpinKitRing(
                          size: 15,
                          color: Colors.white,
                          lineWidth: 2,
                          duration: Duration(milliseconds: 700),
                        )
                            : Container()
                      ],
                    )),
              ),
            ),

          ],),
        )


    );
  }

  bool isloading=false;

  updatephone() async {
    setState(() {
      isloading = true;
    });
    try {
      final headers = {
        'Authorization': token,
      };
      final Uri url =
      Uri.parse(baseUrl+"/user-update-phone");
      final response = await http.post(
        url,
        headers: headers,
        body: phone,
      );
      if(response.statusCode==200){
        user.phone = phone;
       alert('تمت إضافة رقم الهاتف بنجاح');
      }else{
        print('errrr  ${response.body}');
      }
      setState(() {
        isloading = false;
      });
    } catch (error) {
      setState(() {
        isloading = false;
      });
    }
  }

  alert(message) {
    showDialog(
        context: context,
        builder: (context) {
          return CupertinoAlertDialog(
            title: Text(
              message,
              style: TextStyle(color: Colors.black, fontSize: 15),
            ),
            content: Text(""),
            actions: <Widget>[
              CupertinoDialogAction(
                child: Text(
                  "حسنا",
                  style: TextStyle(
                      color: mainColor,
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),
                onPressed: () {
                  pop(context);
                  pop(context);

                  pageChild.value = MobileAccount();
                },
              ),
            ],
          );
        });
  }

  textFromField({password, hint, icon, inputType, onChange, initialValue}) {
    return Container(
      height: 60.0,
      alignment: AlignmentDirectional.center,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(14.0),
          color: Colors.white,
          boxShadow: [BoxShadow(blurRadius: 10.0, color: Colors.black12)]),
      padding: EdgeInsets.only(left: 20.0, right: 30.0, top: 0.0, bottom: 0.0),
      child: Theme(
        data: ThemeData(
          hintColor: Colors.transparent,
        ),
        child: TextFormField(
          obscureText: password,
          initialValue: initialValue,
          validator: (v){
            if(v.toString().trim().isEmpty){
              return "الرجاء كتابة "+ hint;
            }
            return null;
          },
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
                  fontFamily: 'Sans',
                  letterSpacing: 0.3,
                  color: Colors.black38,
                  fontWeight: FontWeight.w600)),
          keyboardType: inputType,
        ),
      ),
    );
  }
}
