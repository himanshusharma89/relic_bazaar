import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:provider/provider.dart';
import 'package:retro_shopping/helpers/ad_state.dart';
import 'package:retro_shopping/helpers/constants.dart';
import 'package:retro_shopping/model/product_model.dart';
import '../../helpers/app_icons.dart';
import '../retro_button.dart';

class ProductPage extends StatefulWidget {
  const ProductPage({this.product});

  final Product product;

  @override
  _ProductPageState createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  BannerAd bannerAd;

  @override
  void didChangeDependencies() {
    final AdState adState = Provider.of<AdState>(context);

    adState.initialization.then(
      (InitializationStatus status) => setState(
        () => bannerAd = BannerAd(
          // adUnitId: adState.bannerAdUnitId,
          adUnitId: BannerAd.testAdUnitId,
          size: AdSize.banner,
          request: const AdRequest(),
          listener: adState.adListener,
        )..load(),
      ),
    );
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Stack(
        children: <Widget>[
          SafeArea(
            child: SingleChildScrollView(
              child: Container(
                width: width,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/background.png'))),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 18),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(
                        height: height * 0.01,
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            RelicBazaarStackedView(
                              upperColor: Colors.white,
                              width: 35,
                              height: 35,
                              borderColor: Colors.white,
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.pop(context);
                                },
                                child: const Icon(Icons.arrow_back),
                              ),
                            ),
                            const RelicBazaarStackedView(
                              upperColor: Colors.white,
                              width: 35,
                              height: 35,
                              borderColor: Colors.white,
                              child: Padding(
                                padding: EdgeInsets.only(top: 7, left: 6),
                                child: Icon(
                                  RelicIcons.cart,
                                  size: 32,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: height * 0.03,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              for (String s in widget.product.text.split(' '))
                                Text(
                                  s,
                                  style: const TextStyle(
                                      fontSize: 30,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                )
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: const <Widget>[
                              Text(
                                'YEAR',
                                style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                '1561',
                                style: TextStyle(
                                    fontSize: 22,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          )
                        ],
                      ),
                      Text(
                        widget.product.owner,
                        style: const TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.white),
                      ),
                      SizedBox(
                        height: height * 0.01,
                      ),
                      SizedBox(
                        width: width * 0.40,
                        // width: 100,
                        // height: 40,
                        child: Row(
                          children: <Widget>[
                            Column(
                              children: <Widget>[
                                Text(
                                  'height'.toUpperCase(),
                                  overflow: TextOverflow.ellipsis,
                                  style: const TextStyle(
                                      // fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                      fontSize: 11),
                                ),
                                Text(
                                  widget.product.height.toString(),
                                  overflow: TextOverflow.ellipsis,
                                  style: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                      fontSize: 16),
                                )
                              ],
                            ),
                            Expanded(
                              child: Column(
                                children: <Widget>[
                                  Text(
                                    'sold by'.toUpperCase(),
                                    overflow: TextOverflow.ellipsis,
                                    style: const TextStyle(
                                        // fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                        fontSize: 11),
                                  ),
                                  Text(
                                    widget.product.seller,
                                    overflow: TextOverflow.ellipsis,
                                    style: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                        fontSize: 16),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: height * 0.02,
                      ),
                      RelicBazaarStackedView(
                        upperColor: Colors.white,
                        width: width * 0.32,
                        height: 35,
                        borderColor: Colors.white,
                        child: Center(
                          child: Text(
                            widget.product.amount,
                            style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                color: RelicColors.primaryColor,
                                fontSize: 22),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: height * 0.025,
                      ),
                      SizedBox(
                        height: height * 0.55,
                        width: width,
                        child: Stack(
                          children: <Widget>[
                            Transform.translate(
                              offset: const Offset(10, 10),
                              child: Container(
                                width: width * 0.9,
                                height: height * 0.54,
                                decoration: const BoxDecoration(
                                  color: RelicColors.primaryBlack,
                                ),
                              ),
                            ),
                            Container(
                                width: width * 0.9,
                                height: height * 0.54,
                                decoration: const BoxDecoration(
                                  color: RelicColors.primaryColor,
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 20),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      SizedBox(
                                        height: height * 0.05,
                                      ),
                                      SizedBox(
                                        width: width * 0.4,
                                        child: const Text(
                                          'HISTORICAL SIGNIFICANCE',
                                          style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white),
                                        ),
                                      ),
                                      SizedBox(
                                        height: height * .005,
                                      ),
                                      const Text(
                                        'A British Royal Doulton glazed stoneware antique with lovely shades of blue, grey and gold.',
                                        style: TextStyle(
                                            // fontSize: 20,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white),
                                      ),
                                      SizedBox(
                                        height: height * .02,
                                      ),
                                      const Text(
                                        'CONDITION',
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white),
                                      ),
                                      SizedBox(
                                        height: height * .005,
                                      ),
                                      const Text(
                                        'Mild scratches and normal signs of wear and tear might be there. Still, All antiques must be handled with care,',
                                        style: TextStyle(
                                            // fontSize: 20,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white),
                                      ),
                                    ],
                                  ),
                                )),
                            Transform.translate(
                              offset: const Offset(120, -180),
                              child: Image.asset(
                                widget.product.image,
                                width: 300,
                                height: 300,
                              ),
                            ),
                            Transform.translate(
                              offset: const Offset(210, 375),
                              child: Row(
                                children: <Widget>[
                                  RelicBazaarStackedView(
                                    upperColor: Colors.white,
                                    width: width * 0.35,
                                    height: height * 0.05,
                                    borderColor: Colors.white,
                                    child: Center(
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        children: const <Widget>[
                                          Icon(
                                            Icons.add,
                                            color: RelicColors.primaryColor,
                                          ),
                                          Text(
                                            'ADD TO CART',
                                            style: TextStyle(
                                                color: RelicColors.primaryColor,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 15),
                                          ),
                                        ],
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Transform.translate(
                              offset: const Offset(145, 375),
                              child: Row(
                                children: <Widget>[
                                  RelicBazaarStackedView(
                                    upperColor: Colors.white,
                                    width: width * 0.12,
                                    height: height * 0.05,
                                    borderColor: Colors.white,
                                    child: const Center(
                                      child: Icon(
                                        Icons.favorite,
                                        color: RelicColors.primaryColor,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 60),
                    ],
                  ),
                ),
              ),
            ),
          ),
          if (bannerAd != null)
            Positioned(
              bottom: 0,
              child: SizedBox(
                width: width,
                height: 50,
                child: AdWidget(ad: bannerAd),
              ),
            ),
        ],
      ),
    );
  }
}
