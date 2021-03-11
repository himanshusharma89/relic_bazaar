import 'package:flutter/material.dart';
import 'package:retro_shopping/widgets/product/product_card.dart';

class RelicColors {
  static const Color primaryColor = Color(0xff38d0d0);
  static const Color backgroundColor = Color(0xff009d9d);
  static const Color primaryBlack = Color(0xff181818);
  static const Color secondaryBlack = Color(0x29000000);
  static const Color warningColor = Color(0xffE04A3A);
}

List<ProductCard> productsList = <ProductCard>[
  const ProductCard(
      text: 'ANTIQUE VASE',
      owner: 'by Lloyd Duran',
      amount: '₹ 4035',
      image: 'assets/items/3.png',
      seller: 'Monzart',
      height: 51),
  const ProductCard(
      text: 'EDISON TURNTABLE',
      owner: 'by Tony Stark',
      amount: '₹ 5035',
      image: 'assets/items/4.png',
      seller: 'SciPedia',
      height: 43),
  const ProductCard(
      text: 'TATUNG EINSTEIN',
      owner: 'by Lloyd Duran',
      amount: '₹ 4035',
      image: 'assets/items/1.png',
      seller: 'Diz Arts',
      height: 48),
  const ProductCard(
      text: 'MYRON DISC THROWER',
      owner: 'by Lloyd Duran',
      amount: '₹ 4035',
      image: 'assets/items/2.png',
      seller: 'AB Retial',
      height: 32),
  const ProductCard(
      text: 'GUARDIAN CLOCK',
      owner: 'by Claudia Davies',
      amount: '₹ 4035',
      image: 'assets/items/5.png',
      seller: 'Electrica',
      height: 19),
  const ProductCard(
      text: 'ROTATORY DIALER',
      owner: 'by Lloyd Duran',
      amount: '₹ 4035',
      image: 'assets/items/6.png',
      seller: 'RS Telecom',
      height: 29),
];
