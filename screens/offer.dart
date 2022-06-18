import 'package:flutter/material.dart';
import 'package:payapp/widgets/classes.dart';
import 'package:payapp/widgets/allwidgets.dart';

class Offer_Screen extends StatefulWidget {
  const Offer_Screen({Key? key}) : super(key: key);

  @override
  State<Offer_Screen> createState() => _Offer_ScreenState();
}

class _Offer_ScreenState extends State<Offer_Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(AppColorConst.basecolor),
        body: Column(
          children: [
            Offer_ContainerWidget1(
                iscolor: Color(0xff242042),
                iswidth: MediaQuery.of(context).size.width * 100),
            Offer_ContainerWidget2(
                iscolor: Color(0xff3B2042),
                iswidth: MediaQuery.of(context).size.width * 100),
            Offer_ContainerWidget3(
                iscolor: Color(0xff422028),
                iswidth: MediaQuery.of(context).size.width * 100),
            Offer_ContainerWidget4(
                iscolor: Color(0xff242042),
                iswidth: MediaQuery.of(context).size.width * 100),
            Offer_ContainerWidget5(
                iscolor: Color(0xff3B2042),
                iswidth: MediaQuery.of(context).size.width * 100),
          ],
        ));
  }
}
