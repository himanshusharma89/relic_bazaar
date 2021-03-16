import 'package:flutter/material.dart';
import 'package:retro_shopping/model/product.dart';
import 'package:retro_shopping/widgets/product/product_card.dart';

// Route Names

class RouteConstant {
  static const SPLASH_SCREEN = '/';
  static const DASHBOARD_SCREEN = '/dashboard';
  static const HOME_SCREEN = '/home';
  static const LOGIN_SCREEN = '/auth';
  static const PROFILE_SCREEN = '/profile';
  static const PRODUCTS_SCREEN = '/products';
  static const SEARCH_SCREEN = '/search';
  static const WISHLIST_SCREEN = '/wishlist';
  static const CART_SCREEN = '/cart';
  static const ORDERS_SCREEN = '/orders';
  static const SETTINGS_SCREEN = '/settings';
  static const ABOUT_SCREEN = 'about';
}

class RelicColors {
  static const Color primaryColor = Color(0xff38d0d0);
  static const Color backgroundColor = Color(0xff009d9d);
  static const Color primaryBlack = Color(0xff181818);
  static const Color secondaryBlack = Color(0x29000000);
  static const Color warningColor = Color(0xffE04A3A);
}

List<ProductCard> productsList = <ProductCard>[
  ProductCard(
    product: Product(
      text: 'ANTIQUE VASE',
      owner: 'by Lloyd Duran',
      amount: '₹ 4035',
      image: 'assets/items/3.png',
      seller: 'Monzart',
      height: 51,
    ),
  ),
   ProductCard(
    product: Product(
        text: 'EDISON TURNTABLE',
        owner: 'by Tony Stark',
        amount: '₹ 5035',
        image: 'assets/items/4.png',
        seller: 'SciPedia',
        height: 43),),
   ProductCard(
    product: Product(
        text: 'TATUNG EINSTEIN',
        owner: 'by Lloyd Duran',
        amount: '₹ 4035',
        image: 'assets/items/1.png',
        seller: 'Diz Arts',
        height: 48),),
   ProductCard(
    product: Product(
        text: 'MYRON DISC THROWER',
        owner: 'by Lloyd Duran',
        amount: '₹ 4035',
        image: 'assets/items/2.png',
        seller: 'AB Retial',
        height: 32),),
   ProductCard(
      product: Product(
      text: 'GUARDIAN CLOCK',
      owner: 'by Claudia Davies',
      amount: '₹ 4035',
      image: 'assets/items/5.png',
      seller: 'Electrica',
      height: 19),),
   ProductCard(
    product: Product(
        text: 'ROTATORY DIALER',
        owner: 'by Lloyd Duran',
        amount: '₹ 4035',
        image: 'assets/items/6.png',
        seller: 'RS Telecom',
        height: 29),),
];
