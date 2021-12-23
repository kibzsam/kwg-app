import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kwg/config/AppRoute.dart';
import 'package:kwg/config/Assets.dart';
import 'package:kwg/config/Palette.dart';
import 'package:kwg/config/ServiceLocator.dart';

import 'MainViewPage.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Palette.primaryColor,
      appBar: AppBar(title: Text(''), backgroundColor: Colors.transparent, elevation: 0.0),
      extendBodyBehindAppBar: true,
      body: Container(
        width: width,
        height: height,
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            SizedBox(height: height * 0.1),
            Container(
              height: height * 0.2,
              child: Image.asset(Assets.logo),
            ),
            SizedBox(height: height * 0.25),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Palette.secondaryColor,
                padding: EdgeInsets.symmetric(horizontal: width * 0.1, vertical: height * 0.015),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
              onPressed: () {
                locator!<AppRoute>().navigateTo(MainView());
              },
              child: Text(
                'View Posts',
                style: TextStyle(color: Palette.primaryColor, fontSize: 24, fontFamily: 'Lato-Black'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
