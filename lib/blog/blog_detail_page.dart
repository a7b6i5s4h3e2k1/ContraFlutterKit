import 'package:contraflutterkit/custom_widgets/button_plain_with_shadow.dart';
import 'package:contraflutterkit/custom_widgets/button_round_with_shadow.dart';
import 'package:contraflutterkit/login/login_text.dart';
import 'package:contraflutterkit/utils/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BlogDetailPage extends StatefulWidget {
  @override
  _BlogDetailPageState createState() => _BlogDetailPageState();
}

class _BlogDetailPageState extends State<BlogDetailPage> {
  @override
  Widget build(BuildContext context) {
    double statusBarHeight = MediaQuery.of(context).padding.top;
    return Scaffold(
      backgroundColor: Colors.white.withOpacity(0.5),
      body: Stack(children: [
        SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.only(
              top: kToolbarHeight + statusBarHeight + statusBarHeight,
            ),
            padding: EdgeInsets.all(24),
            decoration: ShapeDecoration(
              shadows: [
                BoxShadow(
                  color: wood_smoke,
                  offset: Offset(
                    0.0, // Move to right 10  horizontally
                    -6.0, // Move to bottom 5 Vertically
                  ),
                )
              ],
              color: white,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(16),
                      topLeft: Radius.circular(16))),
            ),
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Image.asset(
                      "assets/images/peep_avatar.png",
                      width: 48,
                      height: 48,
                    ),
                    Icon(
                      Icons.more_horiz,
                      color: wood_smoke,
                    )
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Work with us and forget about others",
                  style: TextStyle(
                      fontSize: 36,
                      fontWeight: FontWeight.bold,
                      color: wood_smoke),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        flex: 1,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Icon(
                              Icons.favorite_border,
                              color: wood_smoke,
                            ),
                            LoginText(
                              text: "Like",
                              size: 13,
                              alignment: Alignment.center,
                            )
                          ],
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Icon(
                              Icons.share,
                              color: wood_smoke,
                            ),
                            LoginText(
                              text: "Share",
                              size: 13,
                              alignment: Alignment.center,
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Wireframe is still important for ideation. It will help you to quickly test idea. Wireframe is still important for ideation. It will help you to quickly test idea. Wireframe is still important for ideation. It will help you to quickly test idea.",
                  style: TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: 17,
                      color: trout),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 240,
                  width: MediaQuery.of(context).size.width,
                  decoration: ShapeDecoration(
                    shadows: [
                      BoxShadow(
                        color: Colors.red,
                        offset: Offset(
                          0.0, // Move to right 10  horizontally
                          0.0, // Move to bottom 5 Vertically
                        ),
                      )
                    ],
                    color: Colors.red,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(16)),
                        side: BorderSide(color: wood_smoke, width: 2)),
                  ),
                  child: Stack(
                    alignment: Alignment.centerLeft,
                    children: <Widget>[
                      Positioned.fill(
                          child: Align(
                              alignment: Alignment.centerLeft,
                              child: SvgPicture.asset(
                                  "assets/images/peep_lady_two.svg"))),
                      Positioned.fill(
                          child: Align(
                              alignment: Alignment.center,
                              child: SvgPicture.asset(
                                  "assets/images/peep_man_one.svg"))),
                      Positioned.fill(
                          child: Align(
                              alignment: Alignment.centerRight,
                              child: SvgPicture.asset(
                                  "assets/images/peep_lady_one.svg")))
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Wireframe is still important for ideation. It will help you to quickly test idea. Wireframe is still important for ideation. It will help you to quickly test idea. Wireframe is still important for ideation. It will help you to quickly test idea.",
                  style: TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: 17,
                      color: trout),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        Text(
                          "Alisa Red",
                          style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                              color: wood_smoke),
                        ),
                        Text(
                          "33 March, 20",
                          style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.normal,
                              color: wood_smoke),
                        )
                      ],
                    ),
                    ButtonPlainWithShadow(
                      borderColor: wood_smoke,
                      color: lightening_yellow,
                      text: "Follow",
                      height: 48,
                      size: 120,
                      callback: () {},
                      shadowColor: wood_smoke,
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
        Positioned.fill(
          top: statusBarHeight + statusBarHeight / 2,
          child: Align(
            alignment: Alignment.topCenter,
            child: ButtonRoundWithShadow(
              iconPath: "assets/icons/close.svg",
              borderColor: black,
              shadowColor: black,
              color: white,
              size: 48,
              callback: () {
                Navigator.of(context).pop();
              },
            ),
          ),
        ),
      ]),
    );
  }
}
