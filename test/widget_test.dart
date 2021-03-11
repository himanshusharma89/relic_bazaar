// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:retro_shopping/helpers/app_icons.dart';
import 'package:retro_shopping/helpers/constants.dart';

import 'package:retro_shopping/main.dart';
import 'package:retro_shopping/widgets/bottom_nav_bar.dart';
import 'package:retro_shopping/widgets/product/product_card.dart';
import 'package:retro_shopping/widgets/product/product_page.dart';

void main() {
  //test for ProductCard widget
  testWidgets(
    "ProductCard displays text and image correctly",
    (WidgetTester tester) async {
      await tester.pumpWidget(Directionality(
        textDirection: TextDirection.ltr,
        child: ProductCard(
          text: 'lorem',
          owner: 'ipsum',
          amount: 'dolor',
          image: 'assets/items/3.png',
          seller: 'seller',
          height: 10,
        ),
      ));

      expect(find.text('lorem'), findsOneWidget);
      expect(find.text('ipsum'), findsOneWidget);
      expect(find.text('dolor'), findsOneWidget);

      //TODO: Add test for AssetImage
    },
  );

  //test for ProductPage widget
  testWidgets(
    "ProductPage displays text and image correctly",
    (WidgetTester tester) async {
      await tester.pumpWidget(MediaQuery(
        data: new MediaQueryData(),
        child: Directionality(
          textDirection: TextDirection.ltr,
          child: ProductPage(
            text: 'text',
            image: 'assets/items/3.png',
            owner: 'owner',
            amount: 'amount',
            prodHeight: 10,
            seller: 'seller',
          ),
        ),
      ));

      expect(find.text('owner'), findsOneWidget);
      expect(find.text('amount'), findsOneWidget);
      expect(find.text('10'), findsOneWidget);
      expect(find.text('seller'), findsOneWidget);
    },
  );

  //test for bottomNavigationBar widget
  testWidgets(
    "BottomNavigationBar works correctly",
    (WidgetTester tester) async {
      int index;
      final PageController _controller = new PageController();

      await tester.pumpWidget(
        MediaQuery(
          data: new MediaQueryData(),
          child: MaterialApp(
            home: Scaffold(
              bottomNavigationBar: BottomNavigationBar(
                items: [
                  BottomNavigationBarItem(
                    icon: Icon(RelicIcons.home),
                    label: 'home',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(RelicIcons.search),
                    label: 'search',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(RelicIcons.cart),
                    label: 'cart',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(RelicIcons.profile),
                    label: 'profile',
                  ),
                ],
                onTap: (value) {
                  index = value;
                },
              ),
            ),
          ),
        ),
      );

      await tester.tap(find.byIcon(RelicIcons.search));
      expect(index, 1);
    },
  );
}
