// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:relic_bazaar/helpers/app_icons.dart';

import 'package:relic_bazaar/model/product_model.dart';
import 'package:relic_bazaar/widgets/payment/cart_item.dart';
import 'package:relic_bazaar/widgets/payment/order_item.dart';
import 'package:relic_bazaar/widgets/product/product_card.dart';
import 'package:relic_bazaar/widgets/product/product_page.dart';

void main() {
  //test for ProductCard widget
  testWidgets(
    'ProductCard displays text and image correctly',
    (WidgetTester tester) async {
      await tester.pumpWidget(Directionality(
          textDirection: TextDirection.ltr,
          child: ProductCard(
            product: Product(
              text: 'lorem',
              owner: 'ipsum',
              amount: 'dolor',
              image: 'assets/items/3.png',
              seller: 'seller',
              height: 10,
            ),
          )));

      expect(find.text('lorem'), findsOneWidget);
      expect(find.text('ipsum'), findsOneWidget);
      expect(find.text('dolor'), findsOneWidget);

      //TODO: Add test for AssetImage
    },
  );

  //test for ProductPage widget
  testWidgets(
    'ProductPage displays text and image correctly',
    (WidgetTester tester) async {
      await tester.pumpWidget(const MediaQuery(
        data: MediaQueryData(),
        child: Directionality(
          textDirection: TextDirection.ltr,
          child: ProductPage(),
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
    'BottomNavigationBar works correctly',
    (WidgetTester tester) async {
      int index;

      await tester.pumpWidget(
        MediaQuery(
          data: const MediaQueryData(),
          child: MaterialApp(
            home: Scaffold(
              bottomNavigationBar: BottomNavigationBar(
                items: const <BottomNavigationBarItem>[
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
                onTap: (int value) {
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

  //test for cart_item
  testWidgets(
    'cartItem widget works correctly',
    (WidgetTester tester) async {
      await tester.pumpWidget(
        MediaQuery(
          data: const MediaQueryData(),
          child: Directionality(
            textDirection: TextDirection.ltr,
            child: Scaffold(
              body: MaterialApp(
                home: CartItem(),
              ),
            ),
          ),
        ),
      );

      final Finder productName = find.text('Product Name');
      final Finder name = find.text('Name');
      final Finder addIcon = find.byIcon(Icons.add);
      final Finder removeIcon = find.byIcon(Icons.remove);

      expect(productName, findsOneWidget);
      expect(name, findsOneWidget);

      expect(find.text('1'), findsOneWidget);

      await tester.tap(addIcon);
      expect(find.text('2'), findsOneWidget);
      await tester.tap(removeIcon);
      expect(find.text('1'), findsOneWidget);
    },
  );

  //test for OrderItem widget when order isn't delivered
  testWidgets(
    'OrderItem widget works correctly (order confirmed)',
    (WidgetTester tester) async {
      await tester.pumpWidget(
        const MediaQuery(
          data: MediaQueryData(),
          child: Directionality(
            textDirection: TextDirection.ltr,
            child: OrderItem(
              title: 'title',
              image: 'assets/items/3.png',
              ordered: 'ordered',
              status: 'status',
              delivered: true,
            ),
          ),
        ),
      );

      final Finder titleText = find.text('title');
      final Finder orderedText = find.text('ordered');
      final Finder statusText = find.text('status');

      expect(titleText, findsOneWidget);
      expect(orderedText, findsOneWidget);
      expect(statusText, findsOneWidget);
      expect(find.text('CANCEL'), findsNothing);
    },
  );

  //test for OrderItem widget when order has been delivered
  testWidgets(
    'OrderItem widget works correctly (order not confirmed yet)',
    (WidgetTester tester) async {
      await tester.pumpWidget(
        const MediaQuery(
          data: MediaQueryData(),
          child: Directionality(
            textDirection: TextDirection.ltr,
            child: OrderItem(
              title: 'title',
              image: 'assets/items/3.png',
              ordered: 'ordered',
              status: 'status',
            ),
          ),
        ),
      );

      final Finder titleText = find.text('title');
      final Finder orderedText = find.text('ordered');
      final Finder statusText = find.text('status');

      expect(titleText, findsOneWidget);
      expect(orderedText, findsOneWidget);
      expect(statusText, findsOneWidget);
      expect(find.text('CANCEL'), findsOneWidget);
    },
  );
}
