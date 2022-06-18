import 'package:flutter/material.dart';
import 'package:payapp/widgets/classes.dart';
import 'package:payapp/widgets/allwidgets.dart';
import 'package:payapp/widgets/app_bar.dart';
import 'offer.dart';
import 'rewards.dart';
import 'home_tab.dart';
import 'bal.dart';

class Home_Screen extends StatefulWidget {
  const Home_Screen({Key? key}) : super(key: key);

  @override
  State<Home_Screen> createState() => _Home_ScreenState();
}

class _Home_ScreenState extends State<Home_Screen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        backgroundColor: Color(AppColorConst.basecolor),
        appBar: AppBar(
          flexibleSpace: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [Color(0xff1F222A), Color(0xff1F222A)],
                    begin: Alignment.bottomRight,
                    end: Alignment.topLeft)),
          ),
          backgroundColor: Colors.transparent,
          leading: Row(
            children: [
              Padding(padding: EdgeInsets.only(left: 15)),
              CircleAvatar(
                backgroundImage: AssetImage('images/fareed.jpg'),
                child: GestureDetector(onTap: () {}),
              ),
            ],
          ),

          title: Container(
            padding: EdgeInsets.only(left: 40),
            decoration: BoxDecoration(
              color: Color(0xff343645),
              borderRadius: BorderRadius.circular(16),
            ),
            height: 30,
            child: Row(
              children: [
                Text(
                  'Search User.Id etc',
                  textScaleFactor: 2,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    color: Color(0xffB0BEC5),
                    fontSize: 7,
                  ),
                ),
                Padding(padding: EdgeInsets.only(left: 15)),
                Icon(
                  Icons.search,
                  color: Color(0xffB0BEC5),
                  size: 30.0,
                )
              ],
            ),
          ),
          actions: [
            Row(
              children: [
                Padding(padding: EdgeInsets.only(right: 15)),
                CircleAvatar(
                  child: Icon(
                    Icons.notifications,
                    color: Color(0xff97A3AB),
                    size: 35.0,
                  ),
                  backgroundColor: Color(0xff343645),
                ),
              ],
            ),
          ],
          // shape: RoundedRectangleBorder(
          //   borderRadius: BorderRadius.vertical(top: Radius.circular(16))
          // ),
          bottom:
              TabBar(indicatorWeight: 5, indicatorColor: Colors.grey, tabs: [
            Tab(
              child: Text(
                'Home',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
              ),
            ),
            Tab(
              child: Text(
                'Balance',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
              ),
            ),
            Tab(
              child: Text(
                'Offers',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
              ),
            ),
            Tab(
              child: Text(
                'Rewards',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
              ),
            )
          ]),
        ),
        body: TabBarView(children: [
          Home_Tab(),
          Balance_Screen(),
          Offer_Screen(),
          Rewards_Screen()
        ]),
      ),
    );
  }
}
