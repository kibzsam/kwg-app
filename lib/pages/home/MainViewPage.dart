import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kwg/config/AppRoute.dart';
import 'package:kwg/config/Palette.dart';
import 'package:kwg/config/ServiceLocator.dart';
import 'package:kwg/pages/home/Posts.dart';
import 'package:url_launcher/url_launcher.dart';

import 'Home.dart';

class MainView extends StatelessWidget {
  launchURL(String url) async {
    if (!url.contains('http')) url = 'https://$url';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Palette.textFieldUnderlineColor,
      appBar: AppBar(
        title: Text('Posts'),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.share),
          )
        ],
      ),
      body: Posts(),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Palette.primaryColor,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white.withOpacity(.60),
        selectedFontSize: 14,
        unselectedFontSize: 14,
        onTap: (value) {
          if (value == 1) {
            locator!<AppRoute>().navigateAndRemoveUntil(Home());
          }
          if (value == 2) {
            launchURL('kwgsoftworks.com');
          }
        },
        items: [
          BottomNavigationBarItem(
            title: Text('Posts'),
            icon: Icon(Icons.post_add),
          ),
          BottomNavigationBarItem(
            title: Text('Home'),
            icon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            title: Text('Website'),
            icon: Icon(Icons.web),
          ),
        ],
      ),
    );
  }
}
