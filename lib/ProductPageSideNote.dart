import 'package:flutter/material.dart';
import 'package:adobe_xd/specific_rect_clip.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProductPageSideNote extends StatelessWidget {
  ProductPageSideNote({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: Stack(
        children: <Widget>[
          SpecificRectClip(
            rect: Rect.fromLTWH(0, 0, 375, 812),
            child: UnconstrainedBox(
              alignment: Alignment.topLeft,
              child: Container(
                width: 470,
                height: 952,
                child: GridView.count(
                  primary: false,
                  padding: EdgeInsets.all(0),
                  mainAxisSpacing: 0,
                  crossAxisSpacing: 0,
                  crossAxisCount: 2,
                  childAspectRatio: 0.9874,
                  children: [
                    {},
                    {},
                    {},
                    {},
                    {},
                    {},
                    {},
                    {},
                  ].map((map) {
                    return Stack(
                      children: <Widget>[
                        Container(
                          width: 235.0,
                          height: 238.0,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: const AssetImage(''),
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                      ],
                    );
                  }).toList(),
                ),
              ),
            ),
          ),
          Transform(
            transform: Matrix4(0.0, 1.0, 0.0, 0.0, -1.0, 0.0, 0.0, 0.0, 0.0,
                0.0, 1.0, 0.0, 375.0, 279.0, 0.0, 1.0),
            child: Container(
              width: 562.0,
              height: 375.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10.0),
                  bottomLeft: Radius.circular(10.0),
                ),
                image: DecorationImage(
                  image: const AssetImage(''),
                  fit: BoxFit.fill,
                  colorFilter: new ColorFilter.mode(
                      Colors.black.withOpacity(0.46), BlendMode.dstIn),
                ),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(0.0, 279.0),
            child: Container(
              width: 375.0,
              height: 533.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10.0),
                  bottomLeft: Radius.circular(10.0),
                ),
                color: const Color(0x80000000),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(326.5, 21.5),
            child:
                // Adobe XD layer: 'Icon feather-shoppi…' (group)
                Stack(
              children: <Widget>[
                Transform.translate(
                  offset: Offset(1.5, 1.5),
                  child: SvgPicture.string(
                    _svg_fy2o2i,
                    allowDrawingOutsideViewBox: true,
                  ),
                ),
              ],
            ),
          ),
          Transform.translate(
            offset: Offset(15.0, 29.0),
            child:
                // Adobe XD layer: 'Icon ionic-ios-arro…' (shape)
                SvgPicture.string(
              _svg_6tnijy,
              allowDrawingOutsideViewBox: true,
            ),
          ),
          Transform.translate(
            offset: Offset(34.0, 131.33),
            child: Text.rich(
              TextSpan(
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 24,
                  color: const Color(0xff745036),
                  height: 1,
                ),
                children: [
                  TextSpan(
                    text: 'ANTIQUE\n',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  TextSpan(
                    text: 'VASE',
                    style: TextStyle(
                      fontSize: 50,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(194.0, 106.0),
            child:
                // Adobe XD layer: 'pngfuel.com' (shape)
                Container(
              width: 156.0,
              height: 270.0,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage(''),
                  fit: BoxFit.fill,
                ),
                boxShadow: [
                  BoxShadow(
                    color: const Color(0x29000000),
                    offset: Offset(12, 16),
                    blurRadius: 6,
                  ),
                ],
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(29.0, 297.0),
            child: Text(
              'Overview',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 18,
                color: const Color(0xffe7a06c),
                fontWeight: FontWeight.w600,
                height: 1,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(29.0, 324.0),
            child: Container(
              width: 86.0,
              height: 3.0,
              decoration: BoxDecoration(
                color: const Color(0x66eda672),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(42.0, 204.5),
            child: Text(
              'by Lloyd Duran',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 14,
                color: const Color(0xff4f3827),
                fontWeight: FontWeight.w600,
                height: 1.5,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(35.0, 398.5),
            child: Text(
              '1993',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 23,
                color: const Color(0xffe7a06c),
                fontWeight: FontWeight.w600,
                height: 0.9130434782608695,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(38.0, 369.5),
            child: Text(
              'YEAR',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 15,
                color: const Color(0xffe7a06c),
                letterSpacing: 2.235,
                height: 1.4,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(125.0, 398.5),
            child: Text(
              '51.2 in',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 23,
                color: const Color(0xffe7a06c),
                fontWeight: FontWeight.w600,
                height: 0.9130434782608695,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(127.0, 369.5),
            child: Text(
              'HEIGHT',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 15,
                color: const Color(0xffe7a06c),
                letterSpacing: 2.235,
                height: 1.4,
              ),
              textAlign: TextAlign.left,
            ),
          ),
        ],
      ),
    );
  }
}

const String _svg_fy2o2i =
    '<svg viewBox="1.5 1.5 29.4 28.8" ><path transform="translate(-1.24, -2.73)" d="M 15 31.5 C 15 32.32842636108398 14.3284273147583 33 13.5 33 C 12.6715726852417 33 12 32.32842636108398 12 31.5 C 12 30.67157363891602 12.6715726852417 30 13.5 30 C 14.3284273147583 30 15 30.67157363891602 15 31.5 Z" fill="none" stroke="#745036" stroke-width="3" stroke-linecap="round" stroke-linejoin="round" /><path transform="translate(-3.56, -2.73)" d="M 31.5 31.5 C 31.5 32.32842636108398 30.82842636108398 33 30 33 C 29.17157363891602 33 28.5 32.32842636108398 28.5 31.5 C 28.5 30.67157363891602 29.17157363891602 30 30 30 C 30.82842636108398 30 31.5 30.67157363891602 31.5 31.5 Z" fill="none" stroke="#745036" stroke-width="3" stroke-linecap="round" stroke-linejoin="round" /><path  d="M 1.5 1.5 L 6.853482246398926 1.5 L 10.44031620025635 19.15172386169434 C 10.69291591644287 20.40439224243164 11.8206901550293 21.29862022399902 13.11705780029297 21.27414894104004 L 26.12601852416992 21.27414894104004 C 27.42238616943359 21.29862022399902 28.5501594543457 20.40439033508301 28.80275917053223 19.15172386169434 L 30.94415283203125 8.09138298034668 L 8.191853523254395 8.09138298034668" fill="none" stroke="#745036" stroke-width="3" stroke-linecap="round" stroke-linejoin="round" /></svg>';
const String _svg_6tnijy =
    '<svg viewBox="15.0 29.0 27.3 16.0" ><path transform="translate(7.12, 17.75)" d="M 17.75674629211426 11.55800914764404 C 18.23959541320801 11.97464561462402 18.23959541320801 12.666259765625 17.7662181854248 13.09123039245605 L 12.01938056945801 18.16586494445801 L 33.91797256469727 18.16586494445801 C 34.59016799926758 18.16586494445801 35.1392936706543 18.64915466308594 35.1392936706543 19.24910926818848 C 35.1392936706543 19.84906959533691 34.59016799926758 20.33236694335938 33.91797256469727 20.33236694335938 L 12.01938056945801 20.33236694335938 L 17.77568244934082 25.40699195861816 C 18.24906730651855 25.83196640014648 18.23959541320801 26.51524353027344 17.7662181854248 26.94021606445312 C 17.28336906433105 27.35685157775879 16.5164966583252 27.35685157775879 16.03364753723145 26.931884765625 L 8.232335090637207 20.01572608947754 C 8.232335090637207 20.01572608947754 8.232335090637207 20.01572608947754 8.232335090637207 20.01572608947754 C 8.128191947937012 19.91573333740234 8.042984962463379 19.80740356445312 7.976710319519043 19.6740837097168 C 7.910436630249023 19.54076194763184 7.882033824920654 19.39910316467285 7.882033824920654 19.2574462890625 C 7.882033824920654 18.9741325378418 8.005115509033203 18.70749282836914 8.232335090637207 18.49917793273926 L 16.03364753723145 11.58301162719727 C 16.49755859375 11.14970302581787 17.2739086151123 11.14137172698975 17.75674629211426 11.55800914764404 Z" fill="#755137" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
