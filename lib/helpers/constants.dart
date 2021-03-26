import 'package:flutter/material.dart';
import 'package:retro_shopping/model/product_model.dart';
import 'package:retro_shopping/widgets/product/product_card.dart';

// Route Names

class RouteConstant {
  static const String DASHBOARD_SCREEN = '/dashboard';
  static const String HOME_SCREEN = '/home';
  static const String LOGIN_SCREEN = '/auth';
  static const String PROFILE_SCREEN = '/profile';
  static const String PRODUCTS_SCREEN = '/products';
  static const String SEARCH_SCREEN = '/search';
  static const String WISHLIST_SCREEN = '/wishlist';
  static const String CART_SCREEN = '/cart';
  static const String ORDERS_SCREEN = '/orders';
  static const String SETTINGS_SCREEN = '/settings';
  static const String ABOUT_SCREEN = '/about';
  static const String FAQs_SCREEN = '/faqs-screen';
  static const String ADDRESS_SCREEN = '/address-screen';
  static const String SIGN_UP_SCREEN = '/sign-up-screen';
  static const String MANAGE_ADDRESS_SCREEN = '/manage-address-screen';
  static const String TERMS_CONDITIONS = '/terms-conditions';
  static const String PAYMENT_SUCCESSFULL = '/payment-successful';
  static const String CHANGE_USERNAME_SCREEN = '/change_username';
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
        height: 43),
  ),
  ProductCard(
    product: Product(
        text: 'TATUNG EINSTEIN',
        owner: 'by Lloyd Duran',
        amount: '₹ 4035',
        image: 'assets/items/1.png',
        seller: 'Diz Arts',
        height: 48),
  ),
  ProductCard(
    product: Product(
        text: 'MYRON DISC THROWER',
        owner: 'by Lloyd Duran',
        amount: '₹ 4035',
        image: 'assets/items/2.png',
        seller: 'AB Retial',
        height: 32),
  ),
  ProductCard(
    product: Product(
        text: 'GUARDIAN CLOCK',
        owner: 'by Claudia Davies',
        amount: '₹ 4035',
        image: 'assets/items/5.png',
        seller: 'Electrica',
        height: 19),
  ),
  ProductCard(
    product: Product(
        text: 'ROTATORY DIALER',
        owner: 'by Lloyd Duran',
        amount: '₹ 4035',
        image: 'assets/items/6.png',
        seller: 'RS Telecom',
        height: 29),
  ),
];
