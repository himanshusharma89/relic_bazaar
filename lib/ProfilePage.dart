// import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';
// import 'package:adobe_xd/specific_rect_clip.dart';

// class ProfilePage extends StatelessWidget {
//   ProfilePage({
//     Key key,
//   }) : super(key: key);
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: const Color(0xff009d9d),
//       body: Stack(
//         children: <Widget>[
//           Transform.translate(
//             offset: Offset(7.0, 899.0),
//             child: Container(
//               width: 381.0,
//               height: 70.0,
//               decoration: BoxDecoration(
//                 color: const Color(0xff181818),
//               ),
//             ),
//           ),
//           Transform.translate(
//             offset: Offset(-1.0, 13.0),
//             child: Stack(
//               children: <Widget>[
//                 Transform.translate(
//                   offset: Offset(31.0, 44.0),
//                   child: Container(
//                     width: 131.0,
//                     height: 131.0,
//                     decoration: BoxDecoration(
//                       color: const Color(0xff181818),
//                       border: Border.all(
//                           width: 1.0, color: const Color(0xff707070)),
//                     ),
//                   ),
//                 ),
//                 Transform.translate(
//                   offset: Offset(25.0, 37.0),
//                   child: Container(
//                     width: 131.0,
//                     height: 131.0,
//                     decoration: BoxDecoration(
//                       image: DecorationImage(
//                         image: const AssetImage(''),
//                         fit: BoxFit.cover,
//                       ),
//                       border: Border.all(
//                           width: 1.0, color: const Color(0xff707070)),
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//           Transform.translate(
//             offset: Offset(0.0, 907.0),
//             child: Container(
//               width: 381.0,
//               height: 70.0,
//               decoration: BoxDecoration(
//                 color: const Color(0xff38d0d0),
//               ),
//             ),
//           ),
//           Transform.translate(
//             offset: Offset(188.0, 65.33),
//             child: Text.rich(
//               TextSpan(
//                 style: TextStyle(
//                   fontFamily: 'pix M 8pt',
//                   fontSize: 33,
//                   color: const Color(0xffffffff),
//                   height: 1.7272727272727273,
//                   shadows: [
//                     Shadow(
//                       color: const Color(0x29000000),
//                       offset: Offset(0, 3),
//                       blurRadius: 6,
//                     )
//                   ],
//                 ),
//                 children: [
//                   TextSpan(
//                     text: 'LINUS\n',
//                   ),
//                   TextSpan(
//                     text: 'TORVALDS',
//                     style: TextStyle(
//                       fontSize: 22,
//                     ),
//                   ),
//                 ],
//               ),
//               textAlign: TextAlign.left,
//             ),
//           ),
//           Transform.translate(
//             offset: Offset(4.0, 12.0),
//             child: Stack(
//               children: <Widget>[
//                 Transform.translate(
//                   offset: Offset(27.0, 267.0),
//                   child: Container(
//                     width: 327.0,
//                     height: 328.0,
//                     decoration: BoxDecoration(
//                       color: const Color(0xff181818),
//                     ),
//                   ),
//                 ),
//                 Transform.translate(
//                   offset: Offset(21.0, 261.0),
//                   child: Container(
//                     width: 327.0,
//                     height: 328.0,
//                     decoration: BoxDecoration(
//                       color: const Color(0xff38d0d0),
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//           Transform.translate(
//             offset: Offset(188.0, 162.5),
//             child: Text(
//               'SHOPPER SINCE MAY 2020',
//               style: TextStyle(
//                 fontFamily: 'Poppins',
//                 fontSize: 12,
//                 color: const Color(0xffffffff),
//                 fontWeight: FontWeight.w600,
//                 height: 1.75,
//               ),
//               textAlign: TextAlign.left,
//             ),
//           ),
//           Transform.translate(
//             offset: Offset(25.0, 215.0),
//             child: Container(
//               width: 122.0,
//               height: 40.0,
//               decoration: BoxDecoration(
//                 color: const Color(0xff181818),
//                 boxShadow: [
//                   BoxShadow(
//                     color: const Color(0x29000000),
//                     offset: Offset(0, 3),
//                     blurRadius: 6,
//                   ),
//                 ],
//               ),
//             ),
//           ),
//           Transform.translate(
//             offset: Offset(21.0, 211.0),
//             child: Container(
//               width: 122.0,
//               height: 40.0,
//               decoration: BoxDecoration(
//                 color: const Color(0xffffffff),
//                 boxShadow: [
//                   BoxShadow(
//                     color: const Color(0x29000000),
//                     offset: Offset(0, 3),
//                     blurRadius: 6,
//                   ),
//                 ],
//               ),
//             ),
//           ),
//           Transform.translate(
//             offset: Offset(42.0, 98.67),
//             child: Text(
//               'ORDERS',
//               style: TextStyle(
//                 fontFamily: 'Poppins',
//                 fontSize: 19,
//                 color: const Color(0xff009d9d),
//                 letterSpacing: 1.3110000000000002,
//                 fontWeight: FontWeight.w700,
//                 height: 8.736842105263158,
//               ),
//               textAlign: TextAlign.left,
//             ),
//           ),
//           Transform.translate(
//             offset: Offset(330.0, 83.0),
//             child: Container(
//               width: 26.0,
//               height: 26.0,
//               decoration: BoxDecoration(
//                 color: const Color(0xff181818),
//               ),
//             ),
//           ),
//           Transform.translate(
//             offset: Offset(326.0, 79.0),
//             child: Container(
//               width: 26.0,
//               height: 26.0,
//               decoration: BoxDecoration(
//                 color: const Color(0xffffffff),
//               ),
//             ),
//           ),
//           Transform.translate(
//             offset: Offset(331.0, 83.0),
//             child:
//                 // Adobe XD layer: 'Icon material-edit' (shape)
//                 SvgPicture.string(
//               _svg_i7qc3p,
//               allowDrawingOutsideViewBox: true,
//             ),
//           ),
//           Stack(
//             children: <Widget>[
//               Stack(
//                 children: <Widget>[
//                   Transform.translate(
//                     offset: Offset(39.0, 298.0),
//                     child: Container(
//                       width: 100.0,
//                       height: 120.0,
//                       decoration: BoxDecoration(
//                         color: const Color(0xff181818),
//                         boxShadow: [
//                           BoxShadow(
//                             color: const Color(0x29000000),
//                             offset: Offset(0, 3),
//                             blurRadius: 6,
//                           ),
//                         ],
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//               Transform.translate(
//                 offset: Offset(35.0, 294.0),
//                 child: Container(
//                   width: 100.0,
//                   height: 120.0,
//                   decoration: BoxDecoration(
//                     color: const Color(0xffffffff),
//                     boxShadow: [
//                       BoxShadow(
//                         color: const Color(0x29000000),
//                         offset: Offset(0, 3),
//                         blurRadius: 6,
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//               Transform.translate(
//                 offset: Offset(58.0, 306.0),
//                 child:
//                     // Adobe XD layer: 'pngfuel.com' (shape)
//                     Container(
//                   width: 58.0,
//                   height: 100.0,
//                   decoration: BoxDecoration(
//                     image: DecorationImage(
//                       image: const AssetImage(''),
//                       fit: BoxFit.fill,
//                     ),
//                     boxShadow: [
//                       BoxShadow(
//                         color: const Color(0x29000000),
//                         offset: Offset(-26, 17),
//                         blurRadius: 21,
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//               Transform.translate(
//                 offset: Offset(43.0, 456.0),
//                 child: Container(
//                   width: 100.0,
//                   height: 120.0,
//                   decoration: BoxDecoration(
//                     color: const Color(0xff181818),
//                     boxShadow: [
//                       BoxShadow(
//                         color: const Color(0x29000000),
//                         offset: Offset(0, 3),
//                         blurRadius: 6,
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//               Transform.translate(
//                 offset: Offset(39.0, 452.0),
//                 child: Container(
//                   width: 100.0,
//                   height: 120.0,
//                   decoration: BoxDecoration(
//                     color: const Color(0xffffffff),
//                     boxShadow: [
//                       BoxShadow(
//                         color: const Color(0x29000000),
//                         offset: Offset(0, 3),
//                         blurRadius: 6,
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//               Transform.translate(
//                 offset: Offset(39.0, 298.0),
//                 child: Container(
//                   width: 100.0,
//                   height: 120.0,
//                   decoration: BoxDecoration(
//                     color: const Color(0xff181818),
//                     boxShadow: [
//                       BoxShadow(
//                         color: const Color(0x29000000),
//                         offset: Offset(0, 3),
//                         blurRadius: 6,
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//               Transform.translate(
//                 offset: Offset(35.0, 294.0),
//                 child: Container(
//                   width: 100.0,
//                   height: 120.0,
//                   decoration: BoxDecoration(
//                     color: const Color(0xffffffff),
//                     boxShadow: [
//                       BoxShadow(
//                         color: const Color(0x29000000),
//                         offset: Offset(0, 3),
//                         blurRadius: 6,
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//               Transform.translate(
//                 offset: Offset(58.0, 306.0),
//                 child:
//                     // Adobe XD layer: 'pngfuel.com' (shape)
//                     Container(
//                   width: 58.0,
//                   height: 100.0,
//                   decoration: BoxDecoration(
//                     image: DecorationImage(
//                       image: const AssetImage(''),
//                       fit: BoxFit.fill,
//                     ),
//                     boxShadow: [
//                       BoxShadow(
//                         color: const Color(0x29000000),
//                         offset: Offset(-26, 17),
//                         blurRadius: 21,
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//             ],
//           ),
//           Transform.translate(
//             offset: Offset(156.0, 301.5),
//             child: Text(
//               'ANTIQUE VASE',
//               style: TextStyle(
//                 fontFamily: 'Poppins',
//                 fontSize: 21,
//                 color: const Color(0xffffffff),
//                 fontWeight: FontWeight.w600,
//                 height: 1,
//               ),
//               textAlign: TextAlign.left,
//             ),
//           ),
//           Transform.translate(
//             offset: Offset(156.0, 321.5),
//             child: Text(
//               'ORDERED 3 DAYS AGO',
//               style: TextStyle(
//                 fontFamily: 'Poppins',
//                 fontSize: 12,
//                 color: const Color(0xffffffff),
//                 fontWeight: FontWeight.w600,
//                 height: 1.75,
//               ),
//               textAlign: TextAlign.left,
//             ),
//           ),
//           Transform.translate(
//             offset: Offset(160.0, 354.0),
//             child: Container(
//               width: 148.0,
//               height: 27.0,
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(5.0),
//                 color: const Color(0xff000000),
//               ),
//             ),
//           ),
//           Transform.translate(
//             offset: Offset(157.0, 350.0),
//             child: Container(
//               width: 149.0,
//               height: 29.0,
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(5.0),
//                 color: const Color(0xffffffff),
//                 border: Border.all(width: 1.0, color: const Color(0xff000000)),
//               ),
//             ),
//           ),
//           Transform.translate(
//             offset: Offset(165.0, 229.67),
//             child: Text(
//               'STATUS : ON THE WAY',
//               style: TextStyle(
//                 fontFamily: 'Poppins',
//                 fontSize: 11,
//                 color: const Color(0xff000000),
//                 letterSpacing: 0.7590000000000001,
//                 fontWeight: FontWeight.w700,
//                 height: 15.090909090909092,
//               ),
//               textAlign: TextAlign.left,
//             ),
//           ),
//           Transform.translate(
//             offset: Offset(156.0, 391.0),
//             child: Container(
//               width: 65.0,
//               height: 26.0,
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(5.0),
//                 color: const Color(0xff009d9d),
//                 border: Border.all(width: 1.0, color: const Color(0xffffffff)),
//                 boxShadow: [
//                   BoxShadow(
//                     color: const Color(0x29ffffff),
//                     offset: Offset(0, 3),
//                     blurRadius: 6,
//                   ),
//                 ],
//               ),
//             ),
//           ),
//           Transform.translate(
//             offset: Offset(164.0, 269.67),
//             child: Text(
//               'DETAILS',
//               style: TextStyle(
//                 fontFamily: 'Poppins',
//                 fontSize: 11,
//                 color: const Color(0xffffffff),
//                 letterSpacing: 0.7590000000000001,
//                 fontWeight: FontWeight.w700,
//                 height: 15.090909090909092,
//               ),
//               textAlign: TextAlign.left,
//             ),
//           ),
//           Transform.translate(
//             offset: Offset(240.0, 391.0),
//             child: Container(
//               width: 65.0,
//               height: 26.0,
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(5.0),
//                 color: const Color(0xffe04a3a),
//                 border: Border.all(width: 1.0, color: const Color(0xffededed)),
//                 boxShadow: [
//                   BoxShadow(
//                     color: const Color(0x29ffffff),
//                     offset: Offset(0, 3),
//                     blurRadius: 6,
//                   ),
//                 ],
//               ),
//             ),
//           ),
//           Transform.translate(
//             offset: Offset(249.0, 269.67),
//             child: Text(
//               'CANCEL',
//               style: TextStyle(
//                 fontFamily: 'Poppins',
//                 fontSize: 11,
//                 color: const Color(0xffffffff),
//                 letterSpacing: 0.7590000000000001,
//                 fontWeight: FontWeight.w700,
//                 height: 15.090909090909092,
//               ),
//               textAlign: TextAlign.left,
//             ),
//           ),
//           Transform.translate(
//             offset: Offset(35.0, 439.0),
//             child: Container(
//               width: 300.0,
//               height: 2.0,
//               decoration: BoxDecoration(
//                 color: const Color(0x54ffffff),
//               ),
//             ),
//           ),
//           Transform.translate(
//             offset: Offset(161.0, 456.5),
//             child: Text(
//               'TATUNG EINSTEIN',
//               style: TextStyle(
//                 fontFamily: 'Poppins',
//                 fontSize: 21,
//                 color: const Color(0xffffffff),
//                 fontWeight: FontWeight.w600,
//                 height: 1,
//               ),
//               textAlign: TextAlign.left,
//             ),
//           ),
//           Transform.translate(
//             offset: Offset(161.0, 476.5),
//             child: Text(
//               'ORDERED 5 WEEKS AGO',
//               style: TextStyle(
//                 fontFamily: 'Poppins',
//                 fontSize: 12,
//                 color: const Color(0xffffffff),
//                 fontWeight: FontWeight.w600,
//                 height: 1.75,
//               ),
//               textAlign: TextAlign.left,
//             ),
//           ),
//           Transform.translate(
//             offset: Offset(165.0, 509.0),
//             child: Container(
//               width: 147.0,
//               height: 27.0,
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(5.0),
//                 color: const Color(0xff000000),
//                 boxShadow: [
//                   BoxShadow(
//                     color: const Color(0x29000000),
//                     offset: Offset(0, 3),
//                     blurRadius: 6,
//                   ),
//                 ],
//               ),
//             ),
//           ),
//           Transform.translate(
//             offset: Offset(161.0, 505.0),
//             child: Container(
//               width: 149.0,
//               height: 29.0,
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(5.0),
//                 color: const Color(0xffffffff),
//                 border: Border.all(width: 1.0, color: const Color(0xff000000)),
//               ),
//             ),
//           ),
//           Transform.translate(
//             offset: Offset(175.0, 383.67),
//             child: Text(
//               'ANTIQUE DELIVERED',
//               style: TextStyle(
//                 fontFamily: 'Poppins',
//                 fontSize: 11,
//                 color: const Color(0xff000000),
//                 letterSpacing: 0.7590000000000001,
//                 fontWeight: FontWeight.w700,
//                 height: 15.090909090909092,
//               ),
//               textAlign: TextAlign.left,
//             ),
//           ),
//           Transform.translate(
//             offset: Offset(161.0, 546.0),
//             child: Container(
//               width: 65.0,
//               height: 26.0,
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(5.0),
//                 color: const Color(0xff009d9d),
//                 border: Border.all(width: 1.0, color: const Color(0xffffffff)),
//                 boxShadow: [
//                   BoxShadow(
//                     color: const Color(0x29ffffff),
//                     offset: Offset(0, 3),
//                     blurRadius: 16,
//                   ),
//                 ],
//               ),
//             ),
//           ),
//           Transform.translate(
//             offset: Offset(170.0, 423.67),
//             child: Text(
//               'DETAILS',
//               style: TextStyle(
//                 fontFamily: 'Poppins',
//                 fontSize: 11,
//                 color: const Color(0xffffffff),
//                 letterSpacing: 0.7590000000000001,
//                 fontWeight: FontWeight.w700,
//                 height: 15.090909090909092,
//               ),
//               textAlign: TextAlign.left,
//             ),
//           ),
//           Transform.translate(
//             offset: Offset(44.0, 469.0),
//             child:
//                 // Adobe XD layer: '1200px-Tatung-einst…' (shape)
//                 Container(
//               width: 91.0,
//               height: 81.0,
//               decoration: BoxDecoration(
//                 image: DecorationImage(
//                   image: const AssetImage(''),
//                   fit: BoxFit.fill,
//                 ),
//               ),
//             ),
//           ),
//           Transform.translate(
//             offset: Offset(0.0, 428.0),
//             child: Stack(
//               children: <Widget>[
//                 Transform.translate(
//                   offset: Offset(27.0, 267.0),
//                   child: Container(
//                     width: 327.0,
//                     height: 179.0,
//                     decoration: BoxDecoration(
//                       color: const Color(0xff181818),
//                     ),
//                   ),
//                 ),
//                 Transform.translate(
//                   offset: Offset(21.0, 261.0),
//                   child: Container(
//                     width: 327.0,
//                     height: 179.0,
//                     decoration: BoxDecoration(
//                       color: const Color(0xff38d0d0),
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//           Transform.translate(
//             offset: Offset(25.0, 630.0),
//             child: Container(
//               width: 168.0,
//               height: 40.0,
//               decoration: BoxDecoration(
//                 color: const Color(0xff181818),
//                 boxShadow: [
//                   BoxShadow(
//                     color: const Color(0x29000000),
//                     offset: Offset(0, 3),
//                     blurRadius: 6,
//                   ),
//                 ],
//               ),
//             ),
//           ),
//           Transform.translate(
//             offset: Offset(21.0, 626.0),
//             child: Container(
//               width: 168.0,
//               height: 40.0,
//               decoration: BoxDecoration(
//                 color: const Color(0xffffffff),
//                 boxShadow: [
//                   BoxShadow(
//                     color: const Color(0x29000000),
//                     offset: Offset(0, 3),
//                     blurRadius: 6,
//                   ),
//                 ],
//               ),
//             ),
//           ),
//           Transform.translate(
//             offset: Offset(68.0, 513.67),
//             child: Text(
//               'WISHLIST',
//               style: TextStyle(
//                 fontFamily: 'Poppins',
//                 fontSize: 19,
//                 color: const Color(0xff009d9d),
//                 letterSpacing: 1.3110000000000002,
//                 fontWeight: FontWeight.w700,
//                 height: 8.736842105263158,
//               ),
//               textAlign: TextAlign.left,
//             ),
//           ),
//           Transform.translate(
//             offset: Offset(33.6, 637.25),
//             child:
//                 // Adobe XD layer: 'Icon awesome-heart' (shape)
//                 SvgPicture.string(
//               _svg_q6colg,
//               allowDrawingOutsideViewBox: true,
//             ),
//           ),
//           Transform.translate(
//             offset: Offset(41.0, 719.0),
//             child: Container(
//               width: 100.0,
//               height: 120.0,
//               decoration: BoxDecoration(
//                 color: const Color(0xff181818),
//                 boxShadow: [
//                   BoxShadow(
//                     color: const Color(0x29000000),
//                     offset: Offset(0, 3),
//                     blurRadius: 6,
//                   ),
//                 ],
//               ),
//             ),
//           ),
//           Transform.translate(
//             offset: Offset(37.0, 715.0),
//             child: Container(
//               width: 100.0,
//               height: 120.0,
//               decoration: BoxDecoration(
//                 color: const Color(0xffffffff),
//                 boxShadow: [
//                   BoxShadow(
//                     color: const Color(0x29000000),
//                     offset: Offset(0, 3),
//                     blurRadius: 6,
//                   ),
//                 ],
//               ),
//             ),
//           ),
//           Transform.translate(
//             offset: Offset(38.0, 723.0),
//             child:
//                 // Adobe XD layer: 'turntables-drawing-…' (shape)
//                 Container(
//               width: 98.0,
//               height: 101.0,
//               decoration: BoxDecoration(
//                 image: DecorationImage(
//                   image: const AssetImage(''),
//                   fit: BoxFit.fill,
//                 ),
//               ),
//             ),
//           ),
//           Transform.translate(
//             offset: Offset(158.0, 720.5),
//             child: Text(
//               'EDISON TURNTABLE',
//               style: TextStyle(
//                 fontFamily: 'Poppins',
//                 fontSize: 19,
//                 color: const Color(0xffffffff),
//                 fontWeight: FontWeight.w600,
//                 height: 1.105263157894737,
//               ),
//               textAlign: TextAlign.left,
//             ),
//           ),
//           Transform.translate(
//             offset: Offset(160.0, 783.0),
//             child: Container(
//               width: 175.0,
//               height: 38.0,
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(5.0),
//                 color: const Color(0xffffffff),
//                 boxShadow: [
//                   BoxShadow(
//                     color: const Color(0x29000000),
//                     offset: Offset(0, 3),
//                     blurRadius: 6,
//                   ),
//                 ],
//               ),
//             ),
//           ),
//           Transform.translate(
//             offset: Offset(156.0, 779.0),
//             child: Container(
//               width: 175.0,
//               height: 38.0,
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(5.0),
//                 color: const Color(0xff000000),
//                 border: Border.all(width: 1.0, color: const Color(0xffffffff)),
//               ),
//             ),
//           ),
//           Transform.translate(
//             offset: Offset(194.0, 663.67),
//             child: Text(
//               'OUT OF STOCK',
//               style: TextStyle(
//                 fontFamily: 'Poppins',
//                 fontSize: 13,
//                 color: const Color(0xffffffff),
//                 letterSpacing: 0.897,
//                 fontWeight: FontWeight.w700,
//                 height: 12.76923076923077,
//               ),
//               textAlign: TextAlign.left,
//             ),
//           ),
//           Transform.translate(
//             offset: Offset(158.0, 739.5),
//             child: Text(
//               'by Tony Stark',
//               style: TextStyle(
//                 fontFamily: 'Poppins',
//                 fontSize: 13,
//                 color: const Color(0xffffffff),
//                 fontWeight: FontWeight.w600,
//                 height: 1.6153846153846154,
//               ),
//               textAlign: TextAlign.left,
//             ),
//           ),
//           Transform.translate(
//             offset: Offset(7.0, 901.0),
//             child: Container(
//               width: 374.0,
//               height: 73.0,
//               decoration: BoxDecoration(
//                 color: const Color(0xff0c0303),
//                 border: Border.all(width: 1.0, color: const Color(0xff707070)),
//               ),
//             ),
//           ),
//           Transform.translate(
//             offset: Offset(7.0, 901.0),
//             child: Container(
//               width: 374.0,
//               height: 76.0,
//               decoration: BoxDecoration(
//                 color: const Color(0xff0c0303),
//                 border: Border.all(width: 1.0, color: const Color(0xff707070)),
//               ),
//             ),
//           ),
//           Transform.translate(
//             offset: Offset(-1.0, 900.0),
//             child: SpecificRectClip(
//               rect: Rect.fromLTWH(0, 0, 376, 75),
//               child: UnconstrainedBox(
//                 alignment: Alignment.topLeft,
//                 child: Container(
//                   width: 660,
//                   height: 119,
//                   child: GridView.count(
//                     primary: false,
//                     padding: EdgeInsets.all(0),
//                     mainAxisSpacing: 20,
//                     crossAxisSpacing: 20,
//                     crossAxisCount: 1,
//                     childAspectRatio: 5.5462,
//                     children: [
//                       {},
//                     ].map((map) {
//                       return Transform.translate(
//                         offset: Offset(-1192.0, 877.0),
//                         child: Stack(
//                           children: <Widget>[
//                             Transform.translate(
//                               offset: Offset(1192.0, -877.0),
//                               child: Container(
//                                 width: 660.0,
//                                 height: 119.0,
//                                 decoration: BoxDecoration(
//                                   color: const Color(0xfff9f6f6),
//                                   border: Border.all(
//                                       width: 1.0,
//                                       color: const Color(0xff707070)),
//                                 ),
//                               ),
//                             ),
//                             Transform.translate(
//                               offset: Offset(1192.0, -877.0),
//                               child: Container(
//                                 width: 660.0,
//                                 height: 119.0,
//                                 decoration: BoxDecoration(
//                                   color: const Color(0xfff9f6f6),
//                                   border: Border.all(
//                                       width: 1.0,
//                                       color: const Color(0xff707070)),
//                                 ),
//                               ),
//                             ),
//                             Transform.translate(
//                               offset: Offset(1192.0, -877.0),
//                               child: Container(
//                                 width: 660.0,
//                                 height: 119.0,
//                                 decoration: BoxDecoration(
//                                   color: const Color(0xfff9f6f6),
//                                   border: Border.all(
//                                       width: 1.0,
//                                       color: const Color(0xff707070)),
//                                 ),
//                               ),
//                             ),
//                             Transform.translate(
//                               offset: Offset(1192.0, -877.0),
//                               child: Container(
//                                 width: 660.0,
//                                 height: 119.0,
//                                 decoration: BoxDecoration(
//                                   color: const Color(0xfff9f6f6),
//                                   border: Border.all(
//                                       width: 1.0,
//                                       color: const Color(0xff707070)),
//                                 ),
//                               ),
//                             ),
//                           ],
//                         ),
//                       );
//                     }).toList(),
//                   ),
//                 ),
//               ),
//             ),
//           ),
//           Transform.translate(
//             offset: Offset(122.0, 914.0),
//             child: SpecificRectClip(
//               rect: Rect.fromLTWH(0, 0, 46, 46),
//               child: UnconstrainedBox(
//                 alignment: Alignment.topLeft,
//                 child: Container(
//                   width: 72,
//                   height: 75,
//                   child: GridView.count(
//                     primary: false,
//                     padding: EdgeInsets.all(0),
//                     mainAxisSpacing: 20,
//                     crossAxisSpacing: 20,
//                     crossAxisCount: 1,
//                     childAspectRatio: 0.96,
//                     children: [
//                       {},
//                     ].map((map) {
//                       return Transform.translate(
//                         offset: Offset(-1192.0, 877.0),
//                         child: Stack(
//                           children: <Widget>[
//                             Transform.translate(
//                               offset: Offset(1192.0, -877.0),
//                               child: Container(
//                                 width: 72.0,
//                                 height: 75.0,
//                                 decoration: BoxDecoration(
//                                   color: const Color(0x6b070707),
//                                   border: Border.all(
//                                       width: 1.0,
//                                       color: const Color(0x6be4e4e4)),
//                                 ),
//                               ),
//                             ),
//                           ],
//                         ),
//                       );
//                     }).toList(),
//                   ),
//                 ),
//               ),
//             ),
//           ),
//           Transform.translate(
//             offset: Offset(119.0, 911.0),
//             child: SpecificRectClip(
//               rect: Rect.fromLTWH(0, 0, 45, 46),
//               child: UnconstrainedBox(
//                 alignment: Alignment.topLeft,
//                 child: Container(
//                   width: 72,
//                   height: 75,
//                   child: GridView.count(
//                     primary: false,
//                     padding: EdgeInsets.all(0),
//                     mainAxisSpacing: 20,
//                     crossAxisSpacing: 20,
//                     crossAxisCount: 1,
//                     childAspectRatio: 0.96,
//                     children: [
//                       {},
//                     ].map((map) {
//                       return Transform.translate(
//                         offset: Offset(-1192.0, 877.0),
//                         child: Stack(
//                           children: <Widget>[
//                             Transform.translate(
//                               offset: Offset(1192.0, -877.0),
//                               child: Container(
//                                 width: 72.0,
//                                 height: 75.0,
//                                 decoration: BoxDecoration(
//                                   color: const Color(0xffffffff),
//                                   border: Border.all(
//                                       width: 1.0,
//                                       color: const Color(0xff707070)),
//                                 ),
//                               ),
//                             ),
//                           ],
//                         ),
//                       );
//                     }).toList(),
//                   ),
//                 ),
//               ),
//             ),
//           ),
//           Transform.translate(
//             offset: Offset(206.0, 915.0),
//             child: SpecificRectClip(
//               rect: Rect.fromLTWH(0, 0, 47, 46),
//               child: UnconstrainedBox(
//                 alignment: Alignment.topLeft,
//                 child: Container(
//                   width: 72,
//                   height: 75,
//                   child: GridView.count(
//                     primary: false,
//                     padding: EdgeInsets.all(0),
//                     mainAxisSpacing: 20,
//                     crossAxisSpacing: 20,
//                     crossAxisCount: 1,
//                     childAspectRatio: 0.96,
//                     children: [
//                       {},
//                     ].map((map) {
//                       return Transform.translate(
//                         offset: Offset(-1192.0, 877.0),
//                         child: Stack(
//                           children: <Widget>[
//                             Transform.translate(
//                               offset: Offset(1192.0, -877.0),
//                               child: Container(
//                                 width: 72.0,
//                                 height: 75.0,
//                                 decoration: BoxDecoration(
//                                   color: const Color(0x6b070707),
//                                   border: Border.all(
//                                       width: 1.0,
//                                       color: const Color(0x6be4e4e4)),
//                                 ),
//                               ),
//                             ),
//                           ],
//                         ),
//                       );
//                     }).toList(),
//                   ),
//                 ),
//               ),
//             ),
//           ),
//           Transform.translate(
//             offset: Offset(203.0, 912.0),
//             child: SpecificRectClip(
//               rect: Rect.fromLTWH(0, 0, 46, 46),
//               child: UnconstrainedBox(
//                 alignment: Alignment.topLeft,
//                 child: Container(
//                   width: 72,
//                   height: 75,
//                   child: GridView.count(
//                     primary: false,
//                     padding: EdgeInsets.all(0),
//                     mainAxisSpacing: 20,
//                     crossAxisSpacing: 20,
//                     crossAxisCount: 1,
//                     childAspectRatio: 0.96,
//                     children: [
//                       {},
//                     ].map((map) {
//                       return Transform.translate(
//                         offset: Offset(-1192.0, 877.0),
//                         child: Stack(
//                           children: <Widget>[
//                             Transform.translate(
//                               offset: Offset(1192.0, -877.0),
//                               child: Container(
//                                 width: 72.0,
//                                 height: 75.0,
//                                 decoration: BoxDecoration(
//                                   color: const Color(0xffffffff),
//                                   border: Border.all(
//                                       width: 1.0,
//                                       color: const Color(0xff707070)),
//                                 ),
//                               ),
//                             ),
//                           ],
//                         ),
//                       );
//                     }).toList(),
//                   ),
//                 ),
//               ),
//             ),
//           ),
//           Transform.translate(
//             offset: Offset(124.66, 918.72),
//             child:
//                 // Adobe XD layer: 'noun_Magnifying Gla…' (shape)
//                 Container(
//               width: 34.5,
//               height: 34.6,
//               decoration: BoxDecoration(
//                 image: DecorationImage(
//                   image: const AssetImage(''),
//                   fit: BoxFit.fill,
//                 ),
//               ),
//             ),
//           ),
//           Transform.translate(
//             offset: Offset(188.0, 922.0),
//             child:
//                 // Adobe XD layer: 'cart' (shape)
//                 Container(
//               width: 76.0,
//               height: 38.0,
//               decoration: BoxDecoration(
//                 image: DecorationImage(
//                   image: const AssetImage(''),
//                   fit: BoxFit.fill,
//                 ),
//               ),
//             ),
//           ),
//           Transform.translate(
//             offset: Offset(44.0, 912.0),
//             child: SpecificRectClip(
//               rect: Rect.fromLTWH(0, 0, 46, 46),
//               child: UnconstrainedBox(
//                 alignment: Alignment.topLeft,
//                 child: Container(
//                   width: 72,
//                   height: 75,
//                   child: GridView.count(
//                     primary: false,
//                     padding: EdgeInsets.all(0),
//                     mainAxisSpacing: 20,
//                     crossAxisSpacing: 20,
//                     crossAxisCount: 1,
//                     childAspectRatio: 0.96,
//                     children: [
//                       {},
//                     ].map((map) {
//                       return Transform.translate(
//                         offset: Offset(-1192.0, 877.0),
//                         child: Stack(
//                           children: <Widget>[
//                             Transform.translate(
//                               offset: Offset(1192.0, -877.0),
//                               child: Container(
//                                 width: 72.0,
//                                 height: 75.0,
//                                 decoration: BoxDecoration(
//                                   color: const Color(0x6b070707),
//                                   border: Border.all(
//                                       width: 1.0,
//                                       color: const Color(0x6be4e4e4)),
//                                 ),
//                               ),
//                             ),
//                           ],
//                         ),
//                       );
//                     }).toList(),
//                   ),
//                 ),
//               ),
//             ),
//           ),
//           Transform.translate(
//             offset: Offset(41.0, 909.0),
//             child: SpecificRectClip(
//               rect: Rect.fromLTWH(0, 0, 46, 46),
//               child: UnconstrainedBox(
//                 alignment: Alignment.topLeft,
//                 child: Container(
//                   width: 72,
//                   height: 75,
//                   child: GridView.count(
//                     primary: false,
//                     padding: EdgeInsets.all(0),
//                     mainAxisSpacing: 20,
//                     crossAxisSpacing: 20,
//                     crossAxisCount: 1,
//                     childAspectRatio: 0.96,
//                     children: [
//                       {},
//                     ].map((map) {
//                       return Transform.translate(
//                         offset: Offset(-1192.0, 877.0),
//                         child: Stack(
//                           children: <Widget>[
//                             Transform.translate(
//                               offset: Offset(1192.0, -877.0),
//                               child: Container(
//                                 width: 72.0,
//                                 height: 75.0,
//                                 decoration: BoxDecoration(
//                                   color: const Color(0xffffffff),
//                                   border: Border.all(
//                                       width: 1.0,
//                                       color: const Color(0xff707070)),
//                                 ),
//                               ),
//                             ),
//                           ],
//                         ),
//                       );
//                     }).toList(),
//                   ),
//                 ),
//               ),
//             ),
//           ),
//           Transform.translate(
//             offset: Offset(46.0, 914.0),
//             child:
//                 // Adobe XD layer: 'noun_House_436098' (shape)
//                 Container(
//               width: 37.0,
//               height: 37.0,
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(39.0),
//                 image: DecorationImage(
//                   image: const AssetImage(''),
//                   fit: BoxFit.fill,
//                 ),
//               ),
//             ),
//           ),
//           Transform.translate(
//             offset: Offset(282.0, 914.0),
//             child: SpecificRectClip(
//               rect: Rect.fromLTWH(0, 0, 49, 45),
//               child: UnconstrainedBox(
//                 alignment: Alignment.topLeft,
//                 child: Container(
//                   width: 72,
//                   height: 75,
//                   child: GridView.count(
//                     primary: false,
//                     padding: EdgeInsets.all(0),
//                     mainAxisSpacing: 20,
//                     crossAxisSpacing: 20,
//                     crossAxisCount: 1,
//                     childAspectRatio: 0.96,
//                     children: [
//                       {},
//                     ].map((map) {
//                       return Transform.translate(
//                         offset: Offset(-1192.0, 877.0),
//                         child: Stack(
//                           children: <Widget>[
//                             Transform.translate(
//                               offset: Offset(1192.0, -877.0),
//                               child: Container(
//                                 width: 72.0,
//                                 height: 75.0,
//                                 decoration: BoxDecoration(
//                                   color: const Color(0x6b070707),
//                                   border: Border.all(
//                                       width: 1.0,
//                                       color: const Color(0x6be4e4e4)),
//                                 ),
//                               ),
//                             ),
//                           ],
//                         ),
//                       );
//                     }).toList(),
//                   ),
//                 ),
//               ),
//             ),
//           ),
//           Transform.translate(
//             offset: Offset(285.0, 915.0),
//             child: SpecificRectClip(
//               rect: Rect.fromLTWH(0, 0, 46, 46),
//               child: UnconstrainedBox(
//                 alignment: Alignment.topLeft,
//                 child: Container(
//                   width: 72,
//                   height: 75,
//                   child: GridView.count(
//                     primary: false,
//                     padding: EdgeInsets.all(0),
//                     mainAxisSpacing: 20,
//                     crossAxisSpacing: 20,
//                     crossAxisCount: 1,
//                     childAspectRatio: 0.96,
//                     children: [
//                       {},
//                     ].map((map) {
//                       return Transform.translate(
//                         offset: Offset(-1192.0, 877.0),
//                         child: Stack(
//                           children: <Widget>[
//                             Transform.translate(
//                               offset: Offset(1192.0, -877.0),
//                               child: Container(
//                                 width: 72.0,
//                                 height: 75.0,
//                                 decoration: BoxDecoration(
//                                   color: const Color(0xff009d9d),
//                                   border: Border.all(
//                                       width: 1.0,
//                                       color: const Color(0xff707070)),
//                                 ),
//                               ),
//                             ),
//                           ],
//                         ),
//                       );
//                     }).toList(),
//                   ),
//                 ),
//               ),
//             ),
//           ),
//           Transform.translate(
//             offset: Offset(291.0, 922.0),
//             child:
//                 // Adobe XD layer: 'output-onlinepngtoo…' (shape)
//                 Container(
//               width: 34.8,
//               height: 33.0,
//               decoration: BoxDecoration(
//                 image: DecorationImage(
//                   image: const AssetImage(''),
//                   fit: BoxFit.fill,
//                 ),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

// const String _svg_i7qc3p =
//     '<svg viewBox="331.0 83.0 17.0 17.0" ><path transform="translate(326.5, 78.5)" d="M 4.5 17.95797538757324 L 4.5 21.49991416931152 L 8.041937828063965 21.49991416931152 L 18.48829460144043 11.05355739593506 L 14.94635486602783 7.511619567871094 L 4.5 17.95797538757324 Z M 21.22739219665527 8.314459800720215 C 21.59575271606445 7.946098327636719 21.59575271606445 7.351052284240723 21.22739219665527 6.982690811157227 L 19.0172233581543 4.772521495819092 C 18.64886283874512 4.404160022735596 18.0538158416748 4.404160022735596 17.68545532226562 4.772521495819092 L 15.95698738098145 6.50098705291748 L 19.49892616271973 10.04292488098145 L 21.22739219665527 8.314459800720215 Z" fill="#000000" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
// const String _svg_q6colg =
//     '<svg viewBox="33.6 637.2 20.0 17.7" ><path transform="translate(33.6, 635.0)" d="M 18.05786323547363 3.456110715866089 C 15.91727924346924 1.613848924636841 12.7337474822998 1.945219278335571 10.76894092559814 3.992614984512329 L 9.999423980712891 4.793427467346191 L 9.229907989501953 3.992614984512329 C 7.269008636474609 1.945219278335571 4.081569194793701 1.613848924636841 1.940985441207886 3.456110715866089 C -0.5120925903320312 5.57056999206543 -0.6409963965415955 9.36555004119873 1.554274082183838 11.6575288772583 L 9.112722396850586 19.5394115447998 C 9.600994110107422 20.04830169677734 10.39394760131836 20.04830169677734 10.8822193145752 19.5394115447998 L 18.4406681060791 11.65753078460693 C 20.63984489440918 9.365551948547363 20.51094055175781 5.570571422576904 18.05786323547363 3.456111907958984 Z" fill="#009d9d" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';

import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff009d9d),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top: 64.0, left: 16, right: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TopSection(),
                SizedBox(height: 20),
                OrdersSection(),
                SizedBox(
                  height: 20,
                ),
                WishlistSection(),
                SizedBox(
                  height: 100,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class WishlistSection extends StatelessWidget {
  const WishlistSection({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 24.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SectionHeader(title: "♥ WISHLIST"),
          SizedBox(height: 20),
          Stack(
            alignment: AlignmentDirectional.topStart,
            children: [
              Container(
                width: MediaQuery.of(context).size.width * 0.8 + 5,
                height: 225,
                decoration: BoxDecoration(color: Colors.black),
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 16, horizontal: 12),
                width: MediaQuery.of(context).size.width * 0.8,
                height: 220,
                decoration: BoxDecoration(color: Color(0xff38D0D0)),
                child: Column(
                  children: [
                    OrderItem(
                        title: "EDI TURNTABLE",
                        ordered: "by Tony Stark",
                        status: "OUT OF STOCK",
                        image: 'assets/items/4.png'),
                    Divider(),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class OrdersSection extends StatelessWidget {
  const OrdersSection({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 24.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SectionHeader(title: "ORDERS"),
          SizedBox(height: 20),
          Stack(
            alignment: AlignmentDirectional.topStart,
            children: [
              Container(
                width: MediaQuery.of(context).size.width * 0.8 + 5,
                height: 395,
                decoration: BoxDecoration(color: Colors.black),
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 16, horizontal: 12),
                width: MediaQuery.of(context).size.width * 0.8,
                height: 390,
                decoration: BoxDecoration(color: Color(0xff38D0D0)),
                child: Column(
                  children: [
                    OrderItem(
                        title: "ANTIQUE VASE",
                        ordered: "ORDERED 3 DAYS AGO",
                        status: "STATUS : ON THE WAY",
                        image: 'assets/items/3.png'),
                    Divider(),
                    OrderItem(
                        title: "TATUNG EINSTEIN",
                        ordered: "ORDERED 3 WEEKS AGO",
                        status: "ANTIQUE DELIVERED",
                        image: 'assets/items/1.png',
                        delivered: true),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class OrderItem extends StatelessWidget {
  final String title;
  final String image;
  final String ordered;
  final String status;
  final bool delivered;
  OrderItem(
      {this.title,
      this.image,
      this.ordered,
      this.status,
      this.delivered = false});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Stack(
          children: [
            Container(
              width: 140,
              height: 170,
              decoration: BoxDecoration(color: Colors.black),
            ),
            Container(
              width: 135,
              height: 165,
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: Colors.white,
                  image: DecorationImage(
                      image: AssetImage(this.image), fit: BoxFit.scaleDown)),
            ),
          ],
        ),
        SizedBox(
          width: 10,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              this.title,
              overflow: TextOverflow.fade,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w700),
            ),
            Text(
              this.ordered,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 13,
                  fontWeight: FontWeight.w700),
            ),
            SizedBox(height: 10),
            Stack(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * 0.36 + 3,
                  height: 43,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.black),
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.36,
                  height: 40,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black, width: 1),
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white),
                  child: Center(
                      child: Text(
                    this.status,
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                  )),
                ),
              ],
            ),
            SizedBox(height: 10),
            Row(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(vertical: 5, horizontal: 8),
                  decoration: BoxDecoration(
                      border: Border.all(width: 1.0, color: Colors.white),
                      borderRadius: BorderRadius.circular(8),
                      color: Color(0xff009D9D)),
                  child: Text("DETAILS",
                      style: TextStyle(fontSize: 13, color: Colors.white)),
                ),
                SizedBox(width: 10),
                delivered
                    ? Container()
                    : Container(
                        padding:
                            EdgeInsets.symmetric(vertical: 5, horizontal: 8),
                        decoration: BoxDecoration(
                            border: Border.all(width: 1.0, color: Colors.white),
                            borderRadius: BorderRadius.circular(8),
                            color: Color(0xffE04A3A)),
                        child: Text("CANCEL",
                            style:
                                TextStyle(fontSize: 13, color: Colors.white)),
                      ),
              ],
            )
          ],
        )
      ],
    );
  }
}

class SectionHeader extends StatelessWidget {
  final String title;

  SectionHeader({this.title});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.topStart,
      children: [
        Container(
          width: 155,
          height: 55,
          decoration: BoxDecoration(color: Colors.black),
        ),
        Container(
          width: 150,
          height: 50,
          decoration: BoxDecoration(color: Colors.white),
          child: Center(
            child: Text(
              this.title,
              style: TextStyle(
                  color: Color(0xff009D9D),
                  fontSize: 20,
                  fontWeight: FontWeight.w600),
            ),
          ),
        )
      ],
    );
  }
}

class TopSection extends StatelessWidget {
  const TopSection({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          height: 160,
          width: 160,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/person.png'), fit: BoxFit.cover)),
        ),
        Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Linus",
                style: TextStyle(
                    fontSize: 48, fontFamily: 'Pixer', color: Colors.white),
              ),
              Text(
                "Torvalds",
                style: TextStyle(
                    fontSize: 36, fontFamily: 'Pixer', color: Colors.white),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "SHOPPER SINCE MAY 2020",
                style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w600,
                    // fontFamily: 'Poppins',
                    color: Colors.white),
              ),
            ],
          ),
        )
      ],
    );
  }
}
