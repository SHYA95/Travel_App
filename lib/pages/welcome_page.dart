import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_cubit/Widgets/app_large_text.dart';
import 'package:flutter_cubit/Widgets/app_text.dart';
import 'package:flutter_cubit/Widgets/responsive_button.dart';
import 'package:flutter_cubit/misc/colors.dart';

class welcome_page extends StatefulWidget {
  const welcome_page({Key? key}) : super(key: key);
  _WidgetState createState() => _WidgetState();
}

class _WidgetState extends State<welcome_page> {
  List images = ["welcome-one.png", "welcome-two.png", "welcome-three.png"];

  get crossAxisAlignment => null;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
          scrollDirection: Axis.vertical,
          itemCount: images.length,
          itemBuilder: ((_, index) {
            return Container(
              width: double.maxFinite,
              height: double.maxFinite,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("img/" + images[index]),
                    fit: BoxFit.cover),
              ),
              child: Container(
                margin: const EdgeInsets.only(top: 130, left: 20, right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          AppLargeText(text: "Trips"),
                          AppText(
                            text: "Mountains",
                            size: 30,
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Container(
                              width: 250,
                              child: AppText(
                                text:
                                    "Mountains hikes give you an incredeble sense of freedom ",
                                color: AppColors.textColor2,
                                size: 14,
                              )),
                          SizedBox(
                            height: 40,
                          ),
                          responsiveButton(
                            width: 120,
                          )
                        ]),
                    Column(
                      children: List.generate(
                        3,
                        (indexDots) {
                          return Container(
                            width: 8,
                            height: index == indexDots ? 25 : 8,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: index == indexDots
                                  ? AppColors.mainColor
                                  : AppColors.mainColor.withOpacity(0.3),
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            );
          })),
    );
  }
}
