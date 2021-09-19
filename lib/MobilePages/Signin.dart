import 'dart:convert';

import 'package:carsaweb/Mobile/MobileMainPage.dart';
import 'package:carsaweb/MobilePages/Account.dart';
import 'package:carsaweb/MobilePages/update_phone_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_facebook_login/flutter_facebook_login.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:http/http.dart' as http;
import '../Models/User.dart';
import '../helpers.dart';
class MobileSignin extends StatefulWidget {
  bool isRegister ;

  MobileSignin(this.isRegister);

  @override
  _MobileSigninState createState() => _MobileSigninState();
}

class _MobileSigninState extends State<MobileSignin> {
  Map formData = Map();
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 500,
      child: ConstrainedBox(
        constraints:
        BoxConstraints(minHeight: 500),
        child: Container(
          child: IntrinsicHeight(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                   width: 500,

                  color: Colors.white,
                  height: MediaQuery.of(context).size.height * 0.30,
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        CircleAvatar(
                          backgroundColor:
                          Theme.of(context).primaryColor,
                          radius: 40,
                          child: Icon(
                            Icons.person,
                            size: 50,
                          ),
                        ),
                        SizedBox(height: 40,),
                        Center(
                          child: Text(
                            'سجل الدخول الي حسابك',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 30,

                              color: Colors.black,

                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(30),
                  width: 500,

                  decoration: BoxDecoration(
                    color: Colors.white,

                  ),
                  child: Column(children: [

                  widget.isRegister?  Column(
                    children: [
                      textFromField(
                          hint: 'اكتب اسمك كاملا',
                          icon: Icons.phone_android,
                          inputType: TextInputType.text,
                          onChange: (value) {
                            formData['name'] = value;
                          },
                          password: false),
                      SizedBox(
                        height: 20,
                      ),
                      textFromField(
                          hint: 'اكتب البريد الإلكتروني',
                          icon: Icons.phone_android,
                          inputType: TextInputType.text,
                          onChange: (value) {
                            formData['email'] = value;
                          },
                          password: false),

                    ],
                  ):SizedBox(),
                    SizedBox(height: 20,),
                    textFromField(
                        hint: 'اكتب رقم الهاتف',
                        icon: Icons.phone_android,
                        inputType: TextInputType.phone,
                        onChange: (value) {
                          formData['phone'] = value;
                        },
                        password: false),
                    SizedBox(
                      height: 20,
                    ),
                    textFromField(
                        hint: 'اكتب كلمة المرور',
                        icon: Icons.remove_red_eye,
                        inputType: TextInputType.visiblePassword,
                        onChange: (value) {
                          formData['password'] = value.toString();
                        },
                        password: true
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    InkWell(
                      onTap: () {
                        loginRegister(formData, widget.isRegister);
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
                        child: Center(child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('الدخول', style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold,
                                color: Colors.white),),
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
                    SizedBox(height: 20,),

//            InkWell(
//              onTap: (){
//                navigateTo(context: context,page: ForgetPassword());
//              },
//              child: Text(
//                'نسيت كلمة المرور ؟',
//
//                style: TextStyle(
//                    fontSize: 17,
//                    decoration: TextDecoration.underline,
//                    fontWeight: FontWeight.bold,
//                    color: Colors.blueAccent),
//              ),
//            ),
                    SizedBox(height: 20,),

                  !widget.isRegister? InkWell(
                      onTap: () {
                        pageChild.value =  MobileSignin(true);

                      },
                      child: Center(
                        child: Text(
                          'إنشاء حساب جديد',
                          style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                              color: Colors.black45),
                        ),
                      ),
                    ):
                    InkWell(
                      onTap: () {
                        pageChild.value = MobileSignin(false);
                      },
                      child: Center(
                        child: Text(
                          "تسجيل الدخول",
                          style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                              color: Colors.black45),
                        ),
                      ),
                    ),

                    SizedBox(height: 20,),
                    SizedBox(height: 20,),
                    Center(
                      child: Text(
                        'أو',
                        style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                            color: Colors.black45),
                      ),
                    ),
                    SizedBox(height: 10,),
                    buildSocialLoginBtn(
                        'التسجيل عبر جوجل',Colors.red, Colors.white,Colors.white,
                        'assets/google.png', loginWithGoogle),
                    buildSocialLoginBtn(
                        'التسجيل عبر فيسبوك',Colors.indigo, Colors.white,Colors.white,
                        'assets/facebook.png', loginWithFacebook),
                    // buildSocialLoginBtn("التسجيل عبر Apple", Colors.black, Colors.white, Colors.white, 'assets/facebook.png', (){})


                  ],)
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
  loginWithGoogle() async {
    GoogleSignIn _googleSignIn = GoogleSignIn(scopes: [
      'email',
      'profile',
    ]);
    _googleSignIn.signOut();
    GoogleSignInAccount googleuser = await _googleSignIn.signIn();
    GoogleSignInAuthentication googleSignInAuthentication =
    await googleuser.authentication;
    var params = Map();
    print('name : ${googleuser.displayName}');
    params['email']=googleuser.email;
    params['name']=googleuser.displayName;
    params['device_token']='abc';
    params['id']=googleSignInAuthentication.accessToken;

    final Uri url =
    Uri.parse(baseUrl+'/google-login');
    final response = await http.post(
      url,
      body: params,
    );
    print("response : ${response.body}");
    final jsonData = json.decode(response.body) as Map<String, dynamic>;
    token = 'Bearer ${jsonData['success']['token']}';
    print("tokens  :  ${jsonData['success']['token']}");
    user = User(
        name: jsonData['success']['name'],
        email: jsonData['success']['email'],
        phone: jsonData['success']['phone']);
  await  saveToken();
 pushPage(context, UpdatePhone());


//      showSnackBar("شكرا لك تم تسجيل الدخول بنجاح",context);
    setState(() {
      isloading = false;
    });

  }
  loginWithFacebook() async {
    final facebookLogin = FacebookLogin();
    await facebookLogin.logOut();
    final result = await facebookLogin.logIn([
      'email'
    ]);
    switch (result.status) {
      case FacebookLoginStatus.loggedIn:
        var params = Map();
        final graphResponse = await http.get(Uri.parse('https://graph.facebook.com/v2.12/me?fields=name,picture,email&access_token=${result.accessToken.token}'));
        final profile = jsonDecode(graphResponse.body);
        params['email']=profile['email']??'facebook@mail.com';
        params['name']=profile['name'];
        print(' profile  :  ${profile}');
        params['device_token']='abc';
        params['facebook_id']=result.accessToken.userId;
        final Uri url =
        Uri.parse(baseUrl+'/facebook-login');
        final response = await http.post(
          url,
          body: params,
        );
        print("response : ${response.body}");
        final jsonData = json.decode(response.body) as Map<String, dynamic>;
        token = 'Bearer ${jsonData['success']['token']}';
        print("tokens  :  ${jsonData['success']['token']}");
        user = User(
            name: jsonData['success']['name'],
            email: jsonData['success']['email'],
            phone: jsonData['success']['phone']);
        saveToken();
        pushPage(context, UpdatePhone());

        setState(() {
          isloading = false;
        });
        break;
      case FacebookLoginStatus.cancelledByUser:
        break;
      case FacebookLoginStatus.error:
        print(' errrrrrrrrr  :  ${result.errorMessage}');
        break;
    }
  }
  buildSocialLoginBtn(text, color, textColor,iconColor, image, press,) {
    return InkWell(
      onTap: (){
        press();
      },
      child: Container(
        height: 50,
        width: double.infinity,
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: color,
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              offset: Offset(1.0,0.9, ), //(x,y)
              blurRadius: 0.1,
            ),
          ],
        ),
        margin: EdgeInsets.symmetric(vertical: 20),
        child: Row(
          children: [
            Image.asset(image, height: 30, width: 30,color: iconColor, )
            ,
            SizedBox(width: 30,),
            Text(
              text,
              style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                  color: textColor),
            ),
          ],
        ),
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

  bool isloading = false;

  loginRegister(Map params, isRegister) async {
    params['device_token'] = 'and';
    setState(() {
      isloading = true;
    });
    Map<String,String> headers = {
      "Access-Control-Allow-Origin": "*", // Required for CORS support to work
     };
    print(params);
    String endpoint = isRegister ? "/register" : "/login";
    isRegister ? print("") : params.remove("name");
    final Uri url =
    Uri.parse("$baseUrl$endpoint");
    final response = await http.post(

      url,
      headers: headers,

      body: params,
    );
    setState(() {
      isloading = false;
    });
    print("response : ${response.body}");
    final jsonData = json.decode(response.body) as Map<String, dynamic>;
    token = 'Bearer ${jsonData['success']['token']}';
    print("tokens  :  ${jsonData['success']['token']}");
    user = User(
        name: jsonData['success']['name'],
        email: jsonData['success']['email'],
        phone: jsonData['success']['phone']);
    saveToken();

    pageChild.value = MobileAccount();
    // saveToken();

  }
}
