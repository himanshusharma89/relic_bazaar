import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProductPageTryingSomethingFresh extends StatelessWidget {
  ProductPageTryingSomethingFresh({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff009d9d),
      body: Stack(
        children: <Widget>[
          Transform.translate(
            offset: Offset(-18.0, 0.0),
            child:
                // Adobe XD layer: 'Untitled-1.pngadsss…' (shape)
                Container(
              width: 430.0,
              height: 827.0,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage(''),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(0.0, 353.0),
            child: Container(
              width: 375.0,
              height: 459.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(25.0),
                  topRight: Radius.circular(25.0),
                ),
                color: const Color(0xff38d0d0),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(188.0, 180.0),
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
                    offset: Offset(-26, 17),
                    blurRadius: 21,
                  ),
                ],
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(38.0, 113.33),
            child: Text.rich(
              TextSpan(
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 16,
                  color: const Color(0xffffffff),
                  height: 1,
                  shadows: [
                    Shadow(
                      color: const Color(0x29000000),
                      offset: Offset(0, 3),
                      blurRadius: 6,
                    )
                  ],
                ),
                children: [
                  TextSpan(
                    text: 'ANTIQUE\n',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
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
            offset: Offset(40.0, 176.5),
            child: Text(
              'by Lloyd Duran',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 14,
                color: const Color(0xffffffff),
                fontWeight: FontWeight.w600,
                height: 1.5,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(315.0, 20.0),
            child: Container(
              width: 46.0,
              height: 46.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.elliptical(23.0, 23.0)),
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
            offset: Offset(323.5, 30.5),
            child:
                // Adobe XD layer: 'Icon feather-shoppi…' (group)
                Stack(
              children: <Widget>[
                Transform.translate(
                  offset: Offset(1.5, 1.5),
                  child: SvgPicture.string(
                    _svg_2y1a1k,
                    allowDrawingOutsideViewBox: true,
                  ),
                ),
              ],
            ),
          ),
          Transform.translate(
            offset: Offset(16.0, 29.0),
            child:
                // Adobe XD layer: 'Icon ionic-ios-arro…' (shape)
                SvgPicture.string(
              _svg_p9dvlp,
              allowDrawingOutsideViewBox: true,
            ),
          ),
          Transform.translate(
            offset: Offset(100.0, 241.5),
            child: Text(
              '51.2 in',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 18,
                color: const Color(0xffffffff),
                fontWeight: FontWeight.w600,
                height: 1.1666666666666667,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(104.0, 217.5),
            child: Text(
              'HEIGHT',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 10,
                color: const Color(0xffffffff),
                letterSpacing: 1.49,
                height: 2.1,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(40.0, 241.5),
            child: Text(
              '1993',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 18,
                color: const Color(0xffffffff),
                fontWeight: FontWeight.w600,
                height: 1.1666666666666667,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(45.0, 217.5),
            child: Text(
              'YEAR',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 10,
                color: const Color(0xffffffff),
                letterSpacing: 1.49,
                height: 2.1,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(28.0, 285.0),
            child: Container(
              width: 140.0,
              height: 40.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.0),
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
            offset: Offset(28.0, 317.67),
            child: Text(
              'Description',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 19,
                color: const Color(0xffffffff),
                letterSpacing: 1.3110000000000002,
                fontWeight: FontWeight.w700,
                height: 8.736842105263158,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(29.0, 471.0),
            child: SizedBox(
              width: 317.0,
              height: 192.0,
              child: SingleChildScrollView(
                  child: Text(
                'A British Royal Doulton glazed stoneware vase with lovely shades of blue, grey and gold.\n\nUnfortunately this vase is damaged. There is a piece broken from the base (please see pictures). Somehow it has received a good old bang and broken someones heart I\'m sure.... however from the front this is not visible, a good home anyone?',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 14,
                  color: const Color(0xffffffff),
                  letterSpacing: 0.9660000000000001,
                  height: 1.2857142857142858,
                ),
                textAlign: TextAlign.left,
              )),
            ),
          ),
          Transform.translate(
            offset: Offset(28.0, 249.67),
            child: Text(
              'Material',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 13,
                color: const Color(0xffffffff),
                letterSpacing: 0.897,
                fontWeight: FontWeight.w500,
                height: 12.76923076923077,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(26.0, 273.67),
            child: Text(
              'Ceramic',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 19,
                color: const Color(0xffffffff),
                letterSpacing: 1.3110000000000002,
                fontWeight: FontWeight.w700,
                height: 8.736842105263158,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(199.0, 748.0),
            child: Container(
              width: 162.0,
              height: 40.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.0),
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
            offset: Offset(217.35, 755.0),
            child:
                // Adobe XD layer: 'Icon ionic-ios-add-…' (group)
                Stack(
              children: <Widget>[
                Transform.translate(
                  offset: Offset(3.38, 3.38),
                  child: SvgPicture.string(
                    _svg_aw0sb1,
                    allowDrawingOutsideViewBox: true,
                  ),
                ),
              ],
            ),
          ),
          Transform.translate(
            offset: Offset(248.0, 754.5),
            child: Text(
              'ADD TO CART',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 14,
                color: const Color(0xff009d9d),
                fontWeight: FontWeight.w600,
                height: 1.5,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(39.0, 171.67),
            child: Text(
              'INR 46,899',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 19,
                color: const Color(0xff009d9d),
                letterSpacing: 1.3110000000000002,
                fontWeight: FontWeight.w700,
                height: 8.736842105263158,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(139.0, 748.0),
            child: Container(
              width: 43.0,
              height: 40.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.0),
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
            offset: Offset(150.6, 759.25),
            child:
                // Adobe XD layer: 'Icon awesome-heart' (shape)
                SvgPicture.string(
              _svg_57oyo0,
              allowDrawingOutsideViewBox: true,
            ),
          ),
        ],
      ),
    );
  }
}

const String _svg_2y1a1k =
    '<svg viewBox="1.5 1.5 24.0 23.5" ><path transform="translate(-3.15, -8.05)" d="M 15 31.5 C 15 32.32842636108398 14.3284273147583 33 13.5 33 C 12.6715726852417 33 12 32.32842636108398 12 31.5 C 12 30.67157363891602 12.6715726852417 30 13.5 30 C 14.3284273147583 30 15 30.67157363891602 15 31.5 Z" fill="none" stroke="#009d9d" stroke-width="3" stroke-linecap="round" stroke-linejoin="round" /><path transform="translate(-9.0, -8.05)" d="M 31.5 31.5 C 31.5 32.32842636108398 30.82842636108398 33 30 33 C 29.17157363891602 33 28.5 32.32842636108398 28.5 31.5 C 28.5 30.67157363891602 29.17157363891602 30 30 30 C 30.82842636108398 30 31.5 30.67157363891602 31.5 31.5 Z" fill="none" stroke="#009d9d" stroke-width="3" stroke-linecap="round" stroke-linejoin="round" /><path  d="M 1.5 1.5 L 5.863636493682861 1.5 L 8.787272453308105 17.01961517333984 C 8.993167877197266 18.12097549438477 9.912419319152832 18.90719223022461 10.96909141540527 18.88567733764648 L 21.57272720336914 18.88567733764648 C 22.62939834594727 18.90719223022461 23.54864883422852 18.12097549438477 23.75454330444336 17.01961517333984 L 25.5 7.295226097106934 L 6.954545497894287 7.295226097106934" fill="none" stroke="#009d9d" stroke-width="3" stroke-linecap="round" stroke-linejoin="round" /></svg>';
const String _svg_p9dvlp =
    '<svg viewBox="16.0 29.0 24.0 16.0" ><defs><filter id="shadow"><feDropShadow dx="0" dy="3" stdDeviation="6"/></filter></defs><path transform="translate(8.12, 17.75)" d="M 16.57671165466309 11.55800914764404 C 17.00185966491699 11.97464561462402 17.00185966491699 12.666259765625 16.58505058288574 13.09123039245605 L 11.52496433258057 18.16586494445801 L 30.80666160583496 18.16586494445801 C 31.39852905273438 18.16586494445801 31.88203239440918 18.64915466308594 31.88203239440918 19.24910926818848 C 31.88203239440918 19.84906959533691 31.39852905273438 20.33236694335938 30.80666160583496 20.33236694335938 L 11.52496433258057 20.33236694335938 L 16.59338569641113 25.40699195861816 C 17.01020050048828 25.83196640014648 17.00185966491699 26.51524353027344 16.58505058288574 26.94021606445312 C 16.15990447998047 27.35685157775879 15.48467254638672 27.35685157775879 15.0595235824585 26.931884765625 L 8.190473556518555 20.01572608947754 C 8.190473556518555 20.01572608947754 8.190473556518555 20.01572608947754 8.190473556518555 20.01572608947754 C 8.098775863647461 19.91573333740234 8.023751258850098 19.80740356445312 7.965396404266357 19.6740837097168 C 7.907042503356934 19.54076194763184 7.882033824920654 19.39910316467285 7.882033824920654 19.2574462890625 C 7.882033824920654 18.9741325378418 7.990407466888428 18.70749282836914 8.190473556518555 18.49917793273926 L 15.0595235824585 11.58301162719727 C 15.46799659729004 11.14970302581787 16.15157318115234 11.14137172698975 16.57671165466309 11.55800914764404 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" filter="url(#shadow)"/></svg>';
const String _svg_aw0sb1 =
    '<svg viewBox="3.4 3.4 20.0 20.0" ><path transform="translate(-2.0, -2.0)" d="M 19.50764656066895 14.64436626434326 L 16.10563278198242 14.64436626434326 L 16.10563278198242 11.24235248565674 C 16.10563278198242 10.84050369262695 15.77684879302979 10.51171875 15.375 10.51171875 C 14.97315216064453 10.51171875 14.64436626434326 10.84050369262695 14.64436626434326 11.24235248565674 L 14.64436626434326 14.64436626434326 L 11.24235248565674 14.64436626434326 C 10.84050369262695 14.64436626434326 10.51171875 14.91835403442383 10.51171875 15.375 C 10.51171875 15.83164596557617 10.85420322418213 16.10563278198242 11.24235248565674 16.10563278198242 C 11.63050174713135 16.10563278198242 14.64436626434326 16.10563278198242 14.64436626434326 16.10563278198242 C 14.64436626434326 16.10563278198242 14.64436626434326 19.07383346557617 14.64436626434326 19.50764656066895 C 14.64436626434326 19.94145965576172 14.96401882171631 20.23828125 15.375 20.23828125 C 15.78598117828369 20.23828125 16.10563278198242 19.90949440002441 16.10563278198242 19.50764656066895 L 16.10563278198242 16.10563278198242 L 19.50764656066895 16.10563278198242 C 19.90949440002441 16.10563278198242 20.23828125 15.77684879302979 20.23828125 15.375 C 20.23828125 14.97315216064453 19.90949440002441 14.64436626434326 19.50764656066895 14.64436626434326 Z" fill="#009d9d" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /><path  d="M 13.37499904632568 4.721153259277344 C 15.68749809265137 4.721153259277344 17.86057472229004 5.62019157409668 19.49519157409668 7.254807472229004 C 21.12980651855469 8.889422416687012 22.02884483337402 11.06249904632568 22.02884483337402 13.37499904632568 C 22.02884483337402 15.68749809265137 21.12980651855469 17.86057472229004 19.49519157409668 19.49519157409668 C 17.86057472229004 21.12980651855469 15.68749809265137 22.02884483337402 13.37499904632568 22.02884483337402 C 11.06249904632568 22.02884483337402 8.889422416687012 21.12980651855469 7.254807472229004 19.49519157409668 C 5.62019157409668 17.86057472229004 4.721153259277344 15.68749809265137 4.721153259277344 13.37499904632568 C 4.721153259277344 11.06249904632568 5.62019157409668 8.889422416687012 7.254807472229004 7.254807472229004 C 8.889422416687012 5.62019157409668 11.06249904632568 4.721153259277344 13.37499904632568 4.721153259277344 M 13.37499904632568 3.375 C 7.850960731506348 3.375 3.375 7.850960731506348 3.375 13.37499904632568 C 3.375 18.89903831481934 7.850960731506348 23.375 13.37499904632568 23.375 C 18.89903831481934 23.375 23.375 18.89903831481934 23.375 13.37499904632568 C 23.375 7.850960731506348 18.89903831481934 3.375 13.37499904632568 3.375 L 13.37499904632568 3.375 Z" fill="#009d9d" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_57oyo0 =
    '<svg viewBox="150.6 759.2 20.0 17.7" ><path transform="translate(150.6, 757.0)" d="M 18.05786323547363 3.456110715866089 C 15.91727924346924 1.613848924636841 12.7337474822998 1.945219278335571 10.76894092559814 3.992614984512329 L 9.999423980712891 4.793427467346191 L 9.229907989501953 3.992614984512329 C 7.269008636474609 1.945219278335571 4.081569194793701 1.613848924636841 1.940985441207886 3.456110715866089 C -0.5120925903320312 5.57056999206543 -0.6409963965415955 9.36555004119873 1.554274082183838 11.6575288772583 L 9.112722396850586 19.5394115447998 C 9.600994110107422 20.04830169677734 10.39394760131836 20.04830169677734 10.8822193145752 19.5394115447998 L 18.4406681060791 11.65753078460693 C 20.63984489440918 9.365551948547363 20.51094055175781 5.570571422576904 18.05786323547363 3.456111907958984 Z" fill="#009d9d" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
