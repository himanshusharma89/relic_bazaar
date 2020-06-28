import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Cart extends StatelessWidget {
  Cart({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff009d9d),
      body: Stack(
        children: <Widget>[
          Transform.translate(
            offset: Offset(16.0, 19.0),
            child: Text(
              'Your Cart',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 30,
                color: const Color(0xffffffff),
                fontWeight: FontWeight.w700,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(252.0, 117.0),
            child: Container(
              width: 110.0,
              height: 31.0,
              decoration: BoxDecoration(
                color: const Color(0xffffffff),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(26.0, 79.0),
            child: Container(
              width: 162.0,
              height: 38.0,
              decoration: BoxDecoration(
                color: const Color(0xff181818),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(29.0, 210.0),
            child: Container(
              width: 67.0,
              height: 74.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6.0),
                color: const Color(0xff000000),
                boxShadow: [
                  BoxShadow(
                    color: const Color(0x29000000),
                    offset: Offset(0, 3),
                    blurRadius: 6,
                  ),
                ],
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(21.0, 76.0),
            child: Container(
              width: 163.0,
              height: 36.0,
              decoration: BoxDecoration(
                color: const Color(0xffffffff),
                boxShadow: [
                  BoxShadow(
                    color: const Color(0x29000000),
                    offset: Offset(0, 3),
                    blurRadius: 6,
                  ),
                ],
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(26.0, 207.0),
            child: Container(
              width: 67.0,
              height: 74.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6.0),
                color: const Color(0xffffffff),
                boxShadow: [
                  BoxShadow(
                    color: const Color(0x29000000),
                    offset: Offset(0, 3),
                    blurRadius: 6,
                  ),
                ],
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(58.0, 82.0),
            child: Text(
              'back to shop',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 17,
                color: const Color(0xff000000),
                fontWeight: FontWeight.w500,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(31.75, 87.0),
            child:
                // Adobe XD layer: 'Icon ionic-ios-arro…' (shape)
                SvgPicture.string(
              _svg_k6941,
              allowDrawingOutsideViewBox: true,
            ),
          ),
          Transform.translate(
            offset: Offset(32.0, 307.0),
            child: Container(
              width: 67.0,
              height: 73.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6.0),
                color: const Color(0xff000000),
                boxShadow: [
                  BoxShadow(
                    color: const Color(0x29000000),
                    offset: Offset(0, 3),
                    blurRadius: 6,
                  ),
                ],
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(249.0, 112.0),
            child: Container(
              width: 110.0,
              height: 34.0,
              decoration: BoxDecoration(
                color: const Color(0xff000000),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(274.0, 117.0),
            child: Text(
              '5 items',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 17,
                color: const Color(0xffffffff),
                fontWeight: FontWeight.w300,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(29.0, 302.0),
            child: Container(
              width: 67.0,
              height: 74.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6.0),
                color: const Color(0xffffffff),
                boxShadow: [
                  BoxShadow(
                    color: const Color(0x29000000),
                    offset: Offset(0, 3),
                    blurRadius: 6,
                  ),
                ],
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(23.5, 182.5),
            child: SvgPicture.string(
              _svg_yo8tfd,
              allowDrawingOutsideViewBox: true,
            ),
          ),
          Transform.translate(
            offset: Offset(42.0, 214.0),
            child:
                // Adobe XD layer: 'pngfuel.com' (shape)
                Container(
              width: 35.0,
              height: 60.0,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage(''),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(107.0, 167.33),
            child: Text(
              'Antique Vase',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 19,
                color: const Color(0xffffffff),
                fontWeight: FontWeight.w600,
                height: 3.5789473684210527,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(99.5, 294.5),
            child: SvgPicture.string(
              _svg_rxojg3,
              allowDrawingOutsideViewBox: true,
            ),
          ),
          Transform.translate(
            offset: Offset(107.0, 254.0),
            child: Container(
              width: 46.0,
              height: 25.0,
              decoration: BoxDecoration(
                color: const Color(0xffffffff),
                boxShadow: [
                  BoxShadow(
                    color: const Color(0x29000000),
                    offset: Offset(0, 3),
                    blurRadius: 6,
                  ),
                ],
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(128.0, 221.17),
            child: Text(
              '1',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 17,
                color: const Color(0xff060606),
                fontWeight: FontWeight.w500,
                height: 3.588235294117647,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(317.0, 190.17),
            child: Text(
              '100\$',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 12,
                color: const Color(0xffffffff),
                height: 3.5833333333333335,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(107.0, 229.5),
            child: Text(
              'by Lloyd Duran',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 10,
                color: const Color(0xfffafafa),
                fontWeight: FontWeight.w300,
                height: 1.5,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(112.37, 187.5),
            child:
                // Adobe XD layer: 'Icon ionic-ios-add' (shape)
                SvgPicture.string(
              _svg_6iwvxf,
              allowDrawingOutsideViewBox: true,
            ),
          ),
          Transform.translate(
            offset: Offset(109.0, 269.33),
            child: Text(
              'Tatung Einstein',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 19,
                color: const Color(0xffffffff),
                fontWeight: FontWeight.w600,
                height: 3.5789473684210527,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(109.0, 360.0),
            child: Container(
              width: 46.0,
              height: 25.0,
              decoration: BoxDecoration(
                color: const Color(0xffffffff),
                boxShadow: [
                  BoxShadow(
                    color: const Color(0x29000000),
                    offset: Offset(0, 3),
                    blurRadius: 6,
                  ),
                ],
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(130.0, 327.17),
            child: Text(
              '1',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 17,
                color: const Color(0xff060606),
                fontWeight: FontWeight.w500,
                height: 3.588235294117647,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(323.0, 299.67),
            child: Text(
              '150\$',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 12,
                color: const Color(0xffffffff),
                height: 3.3333333333333335,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(111.0, 330.33),
            child: Text(
              'by Hitachi',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 9,
                color: const Color(0xffeeeeee),
                fontWeight: FontWeight.w300,
                height: 1.5555555555555556,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(114.37, 369.0),
            child:
                // Adobe XD layer: 'Icon ionic-ios-add' (shape)
                SvgPicture.string(
              _svg_sk67hc,
              allowDrawingOutsideViewBox: true,
            ),
          ),
          Transform.translate(
            offset: Offset(29.0, 310.0),
            child:
                // Adobe XD layer: '1200px-Tatung-einst…' (shape)
                Container(
              width: 67.0,
              height: 59.0,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage(''),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(0.0, 500.0),
            child: Container(
              width: 375.0,
              height: 312.0,
              decoration: BoxDecoration(
                color: const Color(0xffffffff),
                border: Border.all(width: 1.0, color: const Color(0xff707070)),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(21.0, 510.5),
            child: Text(
              'Cart Total',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 14,
                color: const Color(0xff000000),
                fontWeight: FontWeight.w500,
                height: 1.5,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(23.5, 545.5),
            child: SvgPicture.string(
              _svg_f4ee66,
              allowDrawingOutsideViewBox: true,
            ),
          ),
          Transform.translate(
            offset: Offset(307.0, 509.5),
            child: Text(
              '450\$',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 14,
                color: const Color(0xff000000),
                height: 1.5,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(102.5, 400.5),
            child: SvgPicture.string(
              _svg_306x1h,
              allowDrawingOutsideViewBox: true,
            ),
          ),
          Transform.translate(
            offset: Offset(111.0, 378.33),
            child: Text(
              'Myron Disc Thrower',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 19,
                color: const Color(0xffffffff),
                fontWeight: FontWeight.w500,
                height: 3.5789473684210527,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(111.0, 465.0),
            child: Container(
              width: 46.0,
              height: 25.0,
              decoration: BoxDecoration(
                color: const Color(0xffffffff),
                boxShadow: [
                  BoxShadow(
                    color: const Color(0x29000000),
                    offset: Offset(0, 3),
                    blurRadius: 6,
                  ),
                ],
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(132.0, 432.17),
            child: Text(
              '1',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 17,
                color: const Color(0xff060606),
                fontWeight: FontWeight.w500,
                height: 3.588235294117647,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(321.0, 401.17),
            child: Text(
              '100\$',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 12,
                color: const Color(0xffffffff),
                height: 3.5833333333333335,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(111.0, 440.5),
            child: Text(
              'by Joseph Altman',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 10,
                color: const Color(0xfffafafa),
                fontWeight: FontWeight.w300,
                height: 1.5,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(116.37, 474.0),
            child:
                // Adobe XD layer: 'Icon ionic-ios-add' (shape)
                SvgPicture.string(
              _svg_1a7ob9,
              allowDrawingOutsideViewBox: true,
            ),
          ),
          Transform.translate(
            offset: Offset(29.0, 421.0),
            child: Container(
              width: 67.0,
              height: 72.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6.0),
                color: const Color(0xff000000),
                boxShadow: [
                  BoxShadow(
                    color: const Color(0x29000000),
                    offset: Offset(0, 3),
                    blurRadius: 6,
                  ),
                ],
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(26.0, 416.0),
            child: Container(
              width: 67.0,
              height: 74.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6.0),
                color: const Color(0xffffffff),
                boxShadow: [
                  BoxShadow(
                    color: const Color(0x29000000),
                    offset: Offset(0, 3),
                    blurRadius: 6,
                  ),
                ],
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(34.0, 425.0),
            child:
                // Adobe XD layer: 'artifacts-5' (shape)
                Container(
              width: 57.0,
              height: 57.0,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage(''),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(21.0, 553.5),
            child: Text(
              'Shipping',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 14,
                color: const Color(0xff000000),
                fontWeight: FontWeight.w500,
                height: 1.5,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(23.0, 591.0),
            child: Container(
              width: 41.0,
              height: 40.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6.0),
                color: const Color(0x78ffffff),
                border: Border.all(width: 2.0, color: const Color(0x78707070)),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(80.0, 596.0),
            child: Container(
              width: 271.0,
              height: 31.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5.0),
                color: const Color(0xffd3d3d3),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(91.0, 597.5),
            child: Text(
              'Premium Next Day Shipping',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 14,
                color: const Color(0xff555555),
                fontWeight: FontWeight.w500,
                height: 1.5,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(320.0, 601.0),
            child: Text(
              '50\$',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 12,
                color: const Color(0xff555555),
                height: 1.5,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(24.0, 645.0),
            child: Container(
              width: 41.0,
              height: 40.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6.0),
                color: const Color(0xff38d0d0),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(35.0, 642.0),
            child:
                // Adobe XD layer: 'foursquare-check-in' (shape)
                SvgPicture.string(
              _svg_rqq283,
              allowDrawingOutsideViewBox: true,
            ),
          ),
          Transform.translate(
            offset: Offset(79.0, 648.0),
            child: Container(
              width: 271.0,
              height: 31.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5.0),
                color: const Color(0xff000000),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(89.0, 650.5),
            child: Text(
              'Basic Shipping',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 14,
                color: const Color(0xffffffff),
                fontWeight: FontWeight.w500,
                height: 1.5,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(320.0, 654.0),
            child: Text(
              '0\$',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 12,
                color: const Color(0xffffffff),
                height: 1.5,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(23.5, 696.5),
            child: SvgPicture.string(
              _svg_76t0ce,
              allowDrawingOutsideViewBox: true,
            ),
          ),
          Transform.translate(
            offset: Offset(25.0, 698.5),
            child: Text(
              'ToTaL',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 14,
                color: const Color(0xff000000),
                fontWeight: FontWeight.w500,
                height: 1.5,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(275.0, 694.33),
            child: Text(
              '450\$',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 29,
                color: const Color(0xff000000),
                fontWeight: FontWeight.w700,
                height: 1.5172413793103448,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(40.0, 749.0),
            child: Container(
              width: 307.0,
              height: 45.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(7.0),
                color: const Color(0xff000000),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(34.0, 743.0),
            child: Container(
              width: 307.0,
              height: 47.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(7.0),
                color: const Color(0xffffffff),
                border: Border.all(width: 2.0, color: const Color(0xff000000)),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(64.0, 748.0),
            child: Text(
              'Payment & Address',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 20,
                color: const Color(0xff000000),
                fontWeight: FontWeight.w600,
                height: 1.5,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(269.37, 761.0),
            child:
                // Adobe XD layer: 'Icon ionic-ios-arro…' (shape)
                SvgPicture.string(
              _svg_8m1jqs,
              allowDrawingOutsideViewBox: true,
            ),
          ),
        ],
      ),
    );
  }
}

const String _svg_k6941 =
    '<svg viewBox="31.7 87.0 22.5 15.0" ><defs><filter id="shadow"><feDropShadow dx="0" dy="3" stdDeviation="6"/></filter></defs><path transform="translate(23.87, 75.75)" d="M 16.03332138061523 11.53886318206787 C 16.43189811706543 11.9294605255127 16.43189811706543 12.57785129547119 16.04113960266113 12.97626209259033 L 11.29729270935059 17.73374938964844 L 29.37394332885742 17.73374938964844 C 29.9288215637207 17.73374938964844 30.38210678100586 18.18683433532715 30.38210678100586 18.74929428100586 C 30.38210678100586 19.31175994873047 29.9288215637207 19.76485252380371 29.37394332885742 19.76485252380371 L 11.29729270935059 19.76485252380371 L 16.04895401000977 24.52232933044434 C 16.43971824645996 24.92074394226074 16.43189811706543 25.56131744384766 16.04113960266113 25.95973205566406 C 15.64256381988525 26.35032844543457 15.00953197479248 26.35032844543457 14.61095333099365 25.9519214630127 L 8.171196937561035 19.4680004119873 C 8.171196937561035 19.4680004119873 8.171196937561035 19.4680004119873 8.171196937561035 19.4680004119873 C 8.085229873657227 19.3742561340332 8.014894485473633 19.27269744873047 7.96018648147583 19.14770889282227 C 7.905479907989502 19.02272033691406 7.882033824920654 18.88991355895996 7.882033824920654 18.75711059570312 C 7.882033824920654 18.49150276184082 7.983634471893311 18.24152755737305 8.171196937561035 18.04623222351074 L 14.61095333099365 11.5623025894165 C 14.99389839172363 11.15607452392578 15.63475322723389 11.14826393127441 16.03332138061523 11.53886318206787 Z" fill="#181818" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" filter="url(#shadow)"/></svg>';
const String _svg_yo8tfd =
    '<svg viewBox="23.5 182.5 336.0 1.0" ><path transform="translate(23.5, 182.5)" d="M 0 0 L 336 0" fill="none" stroke="#ffffff" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_rxojg3 =
    '<svg viewBox="99.5 294.5 257.0 1.0" ><path transform="translate(99.5, 294.5)" d="M 0 0 L 257 0" fill="none" stroke="#ffffff" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_6iwvxf =
    '<svg viewBox="112.4 187.5 256.1 84.8" ><path transform="translate(103.4, 254.04)" d="M 17.7171516418457 13.05046463012695 L 14.21259689331055 13.05046463012695 L 14.21259689331055 9.545909881591797 C 14.21259689331055 9.226324081420898 13.95111656188965 8.96484375 13.63153076171875 8.96484375 C 13.31194496154785 8.96484375 13.05046463012695 9.226324081420898 13.05046463012695 9.545909881591797 L 13.05046463012695 13.05046463012695 L 9.545909881591797 13.05046463012695 C 9.226324081420898 13.05046463012695 8.96484375 13.31194496154785 8.96484375 13.63153076171875 C 8.96484375 13.79132461547852 9.030213356018066 13.93659019470215 9.135532379150391 14.04190826416016 C 9.240850448608398 14.1472282409668 9.386116981506348 14.21259689331055 9.545909881591797 14.21259689331055 L 13.05046463012695 14.21259689331055 L 13.05046463012695 17.7171516418457 C 13.05046463012695 17.87694549560547 13.11583518981934 18.02221298217773 13.22115325927734 18.12752914428711 C 13.32647132873535 18.23284912109375 13.47173881530762 18.2982177734375 13.63153076171875 18.2982177734375 C 13.95111656188965 18.2982177734375 14.21259689331055 18.0367374420166 14.21259689331055 17.7171516418457 L 14.21259689331055 14.21259689331055 L 17.7171516418457 14.21259689331055 C 18.0367374420166 14.21259689331055 18.2982177734375 13.95111656188965 18.2982177734375 13.63153076171875 C 18.2982177734375 13.31194496154785 18.0367374420166 13.05046463012695 17.7171516418457 13.05046463012695 Z" fill="#000000" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="translate(140.5, 267.5)" d="M 0 0 L 7 0" fill="none" stroke="#000000" stroke-width="1" stroke-miterlimit="4" stroke-linecap="round" /><path transform="translate(368.5, 187.5)" d="M 0 0 L 0 26" fill="none" stroke="#000000" stroke-width="4" stroke-miterlimit="4" stroke-linecap="round" /></svg>';
const String _svg_sk67hc =
    '<svg viewBox="114.4 369.0 35.1 9.3" ><path transform="translate(105.4, 360.04)" d="M 17.7171516418457 13.05046463012695 L 14.21259689331055 13.05046463012695 L 14.21259689331055 9.545909881591797 C 14.21259689331055 9.226324081420898 13.95111656188965 8.96484375 13.63153076171875 8.96484375 C 13.31194496154785 8.96484375 13.05046463012695 9.226324081420898 13.05046463012695 9.545909881591797 L 13.05046463012695 13.05046463012695 L 9.545909881591797 13.05046463012695 C 9.226324081420898 13.05046463012695 8.96484375 13.31194496154785 8.96484375 13.63153076171875 C 8.96484375 13.79132461547852 9.030213356018066 13.93659019470215 9.135532379150391 14.04190826416016 C 9.240850448608398 14.1472282409668 9.386116981506348 14.21259689331055 9.545909881591797 14.21259689331055 L 13.05046463012695 14.21259689331055 L 13.05046463012695 17.7171516418457 C 13.05046463012695 17.87694549560547 13.11583518981934 18.02221298217773 13.22115325927734 18.12752914428711 C 13.32647132873535 18.23284912109375 13.47173881530762 18.2982177734375 13.63153076171875 18.2982177734375 C 13.95111656188965 18.2982177734375 14.21259689331055 18.0367374420166 14.21259689331055 17.7171516418457 L 14.21259689331055 14.21259689331055 L 17.7171516418457 14.21259689331055 C 18.0367374420166 14.21259689331055 18.2982177734375 13.95111656188965 18.2982177734375 13.63153076171875 C 18.2982177734375 13.31194496154785 18.0367374420166 13.05046463012695 17.7171516418457 13.05046463012695 Z" fill="#000000" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="translate(142.5, 373.5)" d="M 0 0 L 7 0" fill="none" stroke="#000000" stroke-width="1" stroke-miterlimit="4" stroke-linecap="round" /></svg>';
const String _svg_f4ee66 =
    '<svg viewBox="23.5 545.5 330.0 1.0" ><path transform="translate(23.5, 545.5)" d="M 0 0 L 330 0" fill="none" stroke="#707070" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_306x1h =
    '<svg viewBox="102.5 400.5 257.0 1.0" ><path transform="translate(102.5, 400.5)" d="M 0 0 L 257 0" fill="none" stroke="#ffffff" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_1a7ob9 =
    '<svg viewBox="116.4 474.0 35.1 9.3" ><path transform="translate(107.4, 465.04)" d="M 17.7171516418457 13.05046463012695 L 14.21259689331055 13.05046463012695 L 14.21259689331055 9.545909881591797 C 14.21259689331055 9.226324081420898 13.95111656188965 8.96484375 13.63153076171875 8.96484375 C 13.31194496154785 8.96484375 13.05046463012695 9.226324081420898 13.05046463012695 9.545909881591797 L 13.05046463012695 13.05046463012695 L 9.545909881591797 13.05046463012695 C 9.226324081420898 13.05046463012695 8.96484375 13.31194496154785 8.96484375 13.63153076171875 C 8.96484375 13.79132461547852 9.030213356018066 13.93659019470215 9.135532379150391 14.04190826416016 C 9.240850448608398 14.1472282409668 9.386116981506348 14.21259689331055 9.545909881591797 14.21259689331055 L 13.05046463012695 14.21259689331055 L 13.05046463012695 17.7171516418457 C 13.05046463012695 17.87694549560547 13.11583518981934 18.02221298217773 13.22115325927734 18.12752914428711 C 13.32647132873535 18.23284912109375 13.47173881530762 18.2982177734375 13.63153076171875 18.2982177734375 C 13.95111656188965 18.2982177734375 14.21259689331055 18.0367374420166 14.21259689331055 17.7171516418457 L 14.21259689331055 14.21259689331055 L 17.7171516418457 14.21259689331055 C 18.0367374420166 14.21259689331055 18.2982177734375 13.95111656188965 18.2982177734375 13.63153076171875 C 18.2982177734375 13.31194496154785 18.0367374420166 13.05046463012695 17.7171516418457 13.05046463012695 Z" fill="#000000" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="translate(144.5, 478.5)" d="M 0 0 L 7 0" fill="none" stroke="#000000" stroke-width="1" stroke-miterlimit="4" stroke-linecap="round" /></svg>';
const String _svg_rqq283 =
    '<svg viewBox="35.0 642.0 43.6 32.7" ><path transform="translate(35.0, 577.56)" d="M 0 82.16620635986328 L 14.91547679901123 97.11014556884766 L 43.55596923828125 68.49796295166016 L 39.44416046142578 64.44300079345703 L 14.9154748916626 88.94321441650391 L 4.054868698120117 78.08268737792969 L 0 82.16620635986328 Z" fill="#000000" stroke="#ffffff" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_76t0ce =
    '<svg viewBox="23.5 696.5 330.0 1.0" ><path transform="translate(23.5, 696.5)" d="M 0 0 L 330 0" fill="none" stroke="#707070" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_8m1jqs =
    '<svg viewBox="269.4 761.0 17.3 11.5" ><defs><filter id="shadow"><feDropShadow dx="0" dy="3" stdDeviation="6"/></filter></defs><path transform="matrix(-1.0, 0.0, 0.0, -1.0, 294.51, 783.75)" d="M 14.13136577606201 11.471848487854 C 14.4369421005249 11.77130699157715 14.4369421005249 12.26840782165527 14.13736057281494 12.57385635375977 L 10.50040340423584 16.22127151489258 L 24.35919761657715 16.22127151489258 C 24.78460502624512 16.22127151489258 25.13212394714355 16.56863784790039 25.13212394714355 16.99985694885254 C 25.13212394714355 17.43108177185059 24.78460502624512 17.7784538269043 24.35919761657715 17.7784538269043 L 10.50040340423584 17.7784538269043 L 14.14335155487061 21.42585945129395 C 14.44293785095215 21.73130989074707 14.4369421005249 22.2224178314209 14.13736057281494 22.52787017822266 C 13.83178520202637 22.82732772827148 13.34645938873291 22.82732772827148 13.0408821105957 22.52188110351562 L 8.103726387023926 17.55086708068848 C 8.103726387023926 17.55086708068848 8.103726387023926 17.55086708068848 8.103726387023926 17.55086708068848 C 8.03781795501709 17.47899627685547 7.983894348144531 17.4011344909668 7.941950798034668 17.3053092956543 C 7.900009155273438 17.2094841003418 7.882034301757812 17.107666015625 7.882034301757812 17.00584983825684 C 7.882034301757812 16.80221748352051 7.959927558898926 16.61056900024414 8.103726387023926 16.46084213256836 L 13.0408821105957 11.48981952667236 C 13.33447360992432 11.17837715148926 13.82579708099365 11.17238903045654 14.13136577606201 11.471848487854 Z" fill="#181818" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" filter="url(#shadow)"/></svg>';
