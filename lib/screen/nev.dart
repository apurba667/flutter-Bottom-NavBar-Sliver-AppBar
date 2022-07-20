import 'package:buttom_nav_bar/screen/categories.dart';
import 'package:buttom_nav_bar/screen/home.dart';
import 'package:buttom_nav_bar/screen/products.dart';
import 'package:buttom_nav_bar/screen/profile.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class NevDemo extends StatefulWidget {
  const NevDemo({Key? key}) : super(key: key);

  @override
  State<NevDemo> createState() => _NevDemoState();
}

class _NevDemoState extends State<NevDemo> {
  int _page = 0;
  GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();
  List<Widget> screns = [
    Home(),
    Profile(),
    Products(),
    Categories(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        key: _bottomNavigationKey,
        index: 0,
        height: 60.0,
        items: <Widget>[
          Icon(Icons.add, size: 30),
          Icon(Icons.list, size: 30),
          Icon(Icons.compare_arrows, size: 30),
          Icon(Icons.call_split, size: 30),
          Icon(Icons.perm_identity, size: 30),
        ],
        color: Colors.white,
        buttonBackgroundColor: Colors.white,
        backgroundColor: Colors.blueAccent,
        animationCurve: Curves.easeInOut,
        animationDuration: Duration(milliseconds: 600),
        onTap: (index) {
          setState(() {
            _page = index;
          });
        },
        letIndexChange: (index) => true,
      ),
      body: screns[_page],
    );
  }
}
