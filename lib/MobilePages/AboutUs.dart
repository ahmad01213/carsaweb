import 'package:carsaweb/helpers.dart';
import 'package:flutter/material.dart';
class MobileAboutUs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0,vertical: 50),
      child: Center(child:Text("كار SA منصة الكترونية توفر لك الكثير من الخيارات المتعلقة بقطع غيار سيارتك سواء القطع الجديدة أو المستخدمةالمنصة الوحيدة التي تتيح لك تسعيرات مختلفة قبل شراء أي قطع غيار ليمكنك التفضيل بين الخيارات المتوفرة",
        style: TextStyle(fontSize: 27,color: Colors.black,fontWeight: FontWeight.w500),
        textAlign: TextAlign.center,
      ),),
    );
  }
}
