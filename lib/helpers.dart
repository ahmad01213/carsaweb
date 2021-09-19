import 'package:carsaweb/MobilePages/Home.dart';
import 'package:flushbar/flushbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:location/location.dart';

import 'Models/User.dart';

final Color mainColor = Color(0xFF045D78);
final Color secondColor = Colors.orange;

final baseUrl = "https://appweb.website/speed_motor/api";
final filesUrl = "https://appweb.website/speed_motor/";

String searchText="";
pushPage(context, page) {
  Navigator.of(context).push(MaterialPageRoute(builder: (context) => page));
}
replacePage(context, page) {
  Navigator.of(context)
      .pushReplacement(MaterialPageRoute(builder: (context) => page));
}

final pageChild = ValueNotifier<Widget>(MobileHome());

User user=User(name: "", phone: "", email: "");


showSheet(BuildContext context,child) {
  showModalBottomSheet(
    context: context,
    shape: cardRadiusTop(0),
    clipBehavior: Clip.antiAlias,
    backgroundColor: Colors.transparent,
    isScrollControlled: true,
    builder: (BuildContext bc) {
      return child;
    },
  );
}

ShapeBorder cardRadiusTop(double radius) {
  return RoundedRectangleBorder(
    side: BorderSide(color: Colors.transparent, width: 0),
    borderRadius: BorderRadius.only(
        topLeft: Radius.circular(radius), topRight: Radius.circular(radius)),
  );
}


saveToken(){
  final storage = new FlutterSecureStorage();
  storage.write(key: 'token', value: token);
  storage.write(key: 'name', value: user.name);
  storage.write(key: 'email', value: user.email);
  storage.write(key: 'phone', value: user.phone);
}
pop(context) {
  Navigator.of(context).pop();
}

String token="";
isRegistered()  {
  if (token != "") {
    return true;
  } else {
    return false;
  }
}

showSnackBar(message,context) {
  Flushbar(
    message: message,
    icon: Icon(
      Icons.check,
      size: 38.0,
      color: Colors.white,
    ),
    backgroundColor: mainColor,
    duration: Duration(seconds: 4),
    animationDuration: Duration(milliseconds: 300),
    leftBarIndicatorColor: Colors.white,
  )..show(context);
}

Location location = new Location();
String userAdress="";
Future<void> getUserLocation() async {
  bool _serviceEnabled;
  PermissionStatus _permissionGranted;
  _serviceEnabled = await location.serviceEnabled();
  if (!_serviceEnabled) {
    _serviceEnabled = await location.requestService();
    if (!_serviceEnabled) {
      return;
    }
  }
  _permissionGranted = await location.hasPermission();
  if (_permissionGranted == PermissionStatus.denied) {
    _permissionGranted = await location.requestPermission();
    if (_permissionGranted != PermissionStatus.granted) {
      return;
    }
  }

  // final locationInf = await location.getLocation();
  // final coordinates = new Coordinates(locationInf.latitude, locationInf.longitude);
  //
  // final addressData = await Geocoder.local.findAddressesFromCoordinates(coordinates);
  // final first = addressData.first;
  // userAdress = "${first.featureName} : ${first.addressLine}";
}

