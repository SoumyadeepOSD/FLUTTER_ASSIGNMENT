import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:gridapp/constant.dart';

Widget screenContainer(
  double screenWidth,
  double screenHeight,
  List<dynamic> persons,
  List<dynamic> works,
) =>
    Container(
      color: Colors.black,
      child: Container(
        margin: const EdgeInsets.all(2.0),
        child: Column(
          children: [
            SizedBox(
              height: (screenHeight / 2) + 90,
              child: Row(
                children: [
                  Expanded(
                    child:
                        leftSection(screenWidth, screenHeight, works, 20, 20),
                  ),
                  Expanded(
                    child: rightSection(screenWidth, screenHeight, persons),
                  )
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    flex: 3,
                    child: testimonalSection(screenWidth),
                  ),
                  Expanded(
                    flex: 2,
                    child: aboutSection(screenHeight, persons),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );

//======================================================================================
//======================================================================================
//======================================================================================
//======================================================================================
//======================================================================================
//==============================LEFT SECTION============================================
//======================================================================================
//=================================START================================================
//======================================================================================
//======================================================================================
//======================================================================================

Widget leftSection(
  double screenWidth,
  double screenHeight,
  List<dynamic> works,
  double right,
  double left,
) =>
    Container(
      margin: const EdgeInsets.all(2.0),
      decoration: BoxDecoration(
        color: Colors.purple,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          Stack(
            children: [
              Container(
                color: cardbackgroundColor,
                padding: const EdgeInsets.only(left: 20.0),
                child: const AutoSizeText(
                  'Bringing Your Ideas\nTo Life Through\nUI Design',
                  maxLines: 3,
                  style: TextStyle(
                    fontSize: 90,
                    color: brightTextColor,
                  ),
                ),
              ),
              MyButton(
                screenHeight,
                screenWidth,
                left,
                right,
              ),
            ],
          ),
          //testimonals
          Container(
            color: screenWidth < 500 ? Colors.black : Colors.pink,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      vertical: 27,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    margin: const EdgeInsets.all(10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        AutoSizeText(
                          works[0]["number"],
                          style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                            color: brightTextColor,
                          ),
                        ),
                        AutoSizeText(
                          works[0]["label"],
                          style: const TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w700,
                              color: brightTextColor),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      vertical: 27,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.yellow,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    margin: const EdgeInsets.all(10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        AutoSizeText(
                          works[1]["number"],
                          style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        AutoSizeText(
                          works[1]["label"],
                          style: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      vertical: 27,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    margin: const EdgeInsets.all(10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        AutoSizeText(
                          works[2]["number"],
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                            color: brightTextColor,
                          ),
                        ),
                        AutoSizeText(
                          works[2]["label"],
                          style: const TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w700,
                              color: brightTextColor),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );

//======================================================================================
//======================================================================================
//======================================================================================
//======================================================================================
//======================================================================================
//==========================TOP LEFT SECTION============================================
//======================================================================================
//=================================END==================================================
//======================================================================================
//======================================================================================
//======================================================================================
//xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
//======================================================================================
//======================================================================================
//======================================================================================
//======================================================================================
//======================================================================================
//=========================TOP RIGHT SECTION============================================
//======================================================================================
//===============================START==================================================
//======================================================================================
//======================================================================================
//======================================================================================

Widget rightSection(
        double screenWidth, double screenHeight, List<dynamic> persons) =>
    Container(
      margin: const EdgeInsets.all(2.0),
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          //bimgraph
          screenWidth > 500 ? TopBar : const SizedBox(),
          Row(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.indigo,
                  borderRadius: BorderRadius.circular(8.0),
                ),
                margin: const EdgeInsets.only(
                  top: 2.0,
                  right: 2.0,
                ),
                height: (screenHeight / 2),
                width: screenWidth > 500 ? screenWidth / 4 : screenWidth / 2,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10.0),
                  child: Image.asset(
                    'assets/profile.png',
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.brown,
                  height: (screenHeight / 2),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      //name
                      Container(
                        margin: const EdgeInsets.all(2.0),
                        padding: const EdgeInsets.all(20.0),
                        decoration: BoxDecoration(
                          // color: Colors.deepOrange,
                          color: cardbackgroundColor,
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Flexible(
                              child: AutoSizeText(
                                'Name',
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  fontSize: 15,
                                  color: brightTextColor,
                                ),
                              ),
                            ),
                            Flexible(
                              child: AutoSizeText(
                                persons[0]['name'],
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  fontSize: screenWidth > 500 ? 20 : 15,
                                  color: brightTextColor,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      //location
                      Expanded(
                        child: Container(
                          margin: const EdgeInsets.all(2.0),
                          padding: const EdgeInsets.only(
                            left: 20,
                            right: 20,
                          ),
                          decoration: BoxDecoration(
                            // color: Colors.amber,
                            color: cardbackgroundColor,
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Flexible(
                                child: AutoSizeText(
                                  'Based in',
                                  style: TextStyle(
                                    color: fadeTextColor,
                                    fontSize: 15,
                                  ),
                                ),
                              ),
                              Flexible(
                                child: AutoSizeText(
                                  persons[0]['location'],
                                  style: TextStyle(
                                    color: brightTextColor,
                                    fontSize: screenWidth > 500 ? 20 : 15,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      //socials
                      Container(
                        margin: const EdgeInsets.all(2.0),
                        padding: const EdgeInsets.all(20.0),
                        decoration: BoxDecoration(
                          color: cardbackgroundColor,
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            //linkedIn Icon
                            Flexible(
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.grey.shade800,
                                  borderRadius: BorderRadius.circular(50),
                                ),
                                child: Image.asset(
                                  'assets/linkedin.png',
                                  height: screenHeight / 20,
                                  width: screenHeight / 20,
                                ),
                              ),
                            ),
                            //Website Icon
                            Flexible(
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.grey.shade800,
                                  borderRadius: BorderRadius.circular(50),
                                ),
                                child: Image.asset(
                                  'assets/website.png',
                                  height: screenHeight / 20,
                                  width: screenHeight / 20,
                                ),
                              ),
                            ),

                            //Twitter
                            Flexible(
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.grey.shade800,
                                  borderRadius: BorderRadius.circular(50),
                                ),
                                child: Image.asset(
                                  'assets/twitter.png',
                                  height: screenHeight / 20,
                                  width: screenHeight / 20,
                                ),
                              ),
                            ),

                            //Twitter
                            Flexible(
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.grey.shade800,
                                  borderRadius: BorderRadius.circular(50),
                                ),
                                child: Image.asset(
                                  'assets/instagram.png',
                                  height: screenHeight / 20,
                                  width: screenHeight / 20,
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
//======================================================================================
//======================================================================================
//======================================================================================
//======================================================================================
//======================================================================================
//==========================TOP RIGHT SECTION===========================================
//======================================================================================
//=================================END==================================================
//======================================================================================
//======================================================================================
//======================================================================================
//xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
//======================================================================================
//======================================================================================
//======================================================================================
//======================================================================================
//======================================================================================
//=======================BOTTOM LEFT SECTION============================================
//======================================================================================
//===============================START==================================================
//======================================================================================
//======================================================================================
//======================================================================================

Widget testimonalSection(double screenWidth) => Container(
      margin: const EdgeInsets.all(2.0),
      padding: const EdgeInsetsDirectional.all(10.0),
      height: screenWidth < 500 ? 700 : 500,
      decoration: BoxDecoration(
        color: screenWidth > 500 ? Colors.green : cardbackgroundColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(bottom: screenWidth < 500 ? 20.0 : 0.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AutoSizeText(
                  'UI Portfolio',
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontSize:
                        screenWidth < 500 ? screenWidth / 20 : screenWidth / 45,
                    color: brightTextColor,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                AutoSizeText(
                  'See All',
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontSize:
                        screenWidth < 500 ? screenWidth / 20 : screenWidth / 45,
                    color: fadeTextColor,
                  ),
                ),
              ],
            ),
          ),
          Flexible(
            child: Container(
              child: screenWidth > 500
                  ? Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Flexible(
                          child: Image.asset(
                            'assets/portfolio_1.png',
                            width: 400,
                          ),
                        ),
                        Flexible(
                          child: Image.asset(
                            'assets/portfolio_2.png',
                            width: 400,
                          ),
                        ),
                        Flexible(
                          child: Image.asset(
                            'assets/portfolio_3.png',
                            width: 400,
                          ),
                        ),
                      ],
                    )
                  : Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Flexible(
                          child: Image.asset(
                            'assets/portfolio_1.png',
                            width: screenWidth > 500 ? 400 : 200,
                          ),
                        ),
                        Flexible(
                          child: Image.asset(
                            'assets/portfolio_2.png',
                            width: 400,
                          ),
                        ),
                        Flexible(
                          child: Image.asset(
                            'assets/portfolio_3.png',
                            width: 400,
                          ),
                        ),
                      ],
                    ),
            ),
          )
        ],
      ),
    );

//======================================================================================
//======================================================================================
//======================================================================================
//======================================================================================
//======================================================================================
//=======================BOTTOM LEFT SECTION============================================
//======================================================================================
//=================================END==================================================
//======================================================================================
//======================================================================================
//======================================================================================
//xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
//======================================================================================
//======================================================================================
//======================================================================================
//======================================================================================
//======================================================================================
//======================BOTTOM RIGHT SECTION============================================
//======================================================================================
//=============================START====================================================
//======================================================================================
//======================================================================================
//======================================================================================
Widget aboutSection(double screenWidth, List<dynamic> persons) => Container(
      margin: const EdgeInsets.all(2.0),
      padding: const EdgeInsets.all(20.0),
      decoration: BoxDecoration(
        color: cardbackgroundColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(
                child: AutoSizeText(
                  'About',
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontSize:
                        screenWidth > 500 ? screenWidth / 30 : screenWidth / 20,
                    color: brightTextColor,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              Flexible(
                child: AutoSizeText(
                  'Resume',
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontSize:
                        screenWidth > 500 ? screenWidth / 30 : screenWidth / 20,
                    color: fadeTextColor,
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Text(
              persons[0]['about'],
              overflow: TextOverflow.ellipsis,
              maxLines: screenWidth < 500 ? 10 : 5,
              style: TextStyle(
                height: 1.5,
                color: fadeTextColor,
                fontSize:
                    screenWidth > 500 ? screenWidth / 50 : screenWidth / 30,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          )
        ],
      ),
    );

//======================================================================================
//======================================================================================
//======================================================================================
//======================================================================================
//======================================================================================
//======================BOTTOM RIGHT SECTION============================================
//======================================================================================
//=============================END======================================================
//======================================================================================
//======================================================================================
//======================================================================================
//xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
//========================Button================================
Widget MyButton(
        double screenHeight, double screenWidth, double right, double left) =>
    Positioned(
      right: right,
      bottom: left,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          padding: EdgeInsets.symmetric(
            vertical: screenHeight * 0.03,
            horizontal: screenWidth * 0.03,
          ),
          backgroundColor: const Color.fromARGB(255, 89, 0, 255),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
        ),
        onPressed: () {},
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const AutoSizeText(
              'Hire Me',
              style: TextStyle(fontSize: 20),
            ),
            Image.asset(
              'assets/emoji.png',
              height: 30,
              width: 30,
            )
          ],
        ),
      ),
    );

//xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
//==========================BimGraph===============================
Widget TopBar = Container(
  padding: const EdgeInsets.all(10.0),
  decoration: BoxDecoration(
    color: Colors.deepPurpleAccent.shade700,
    borderRadius: BorderRadius.circular(8.0),
  ),
  child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: const [
      Text(
        'BimGraph',
        style: TextStyle(
          color: brightTextColor,
          fontSize: 20,
          fontWeight: FontWeight.w700,
        ),
      ),
      Icon(
        Icons.menu,
        color: Colors.white,
      ),
    ],
  ),
);
