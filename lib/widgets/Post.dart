import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kwg/config/Palette.dart';

class Post extends StatelessWidget {
  Post({required this.email, required this.bodyText, required this.title});
  final String title, email, bodyText;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 5),
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(color: Palette.secondaryColor),
      width: width * 0.1,
      height: height * 0.13,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Flexible(
            child: Container(
              child: Text(
                title,
                style: TextStyle(
                  color: Palette.titleTextColor,
                  fontSize: 16,
                  fontFamily: 'Poppins-SemiBold',
                ),
              ),
            ),
          ),
          Flexible(
            child: Container(
              child: Text(
                email,
                style: TextStyle(
                  fontFamily: 'Poppins-Regular',
                  fontSize: 14,
                  color: Palette.secondaryTextColor,
                ),
              ),
            ),
          ),
          Flexible(
            child: Container(
              child: Text(
                bodyText,
                style: TextStyle(
                  fontFamily: 'Poppins-Regular',
                  fontSize: 15,
                  color: Palette.titleTextColor,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
