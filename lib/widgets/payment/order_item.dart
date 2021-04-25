import 'package:flutter/material.dart';
import 'package:relic_bazaar/helpers/constants.dart';
import 'package:relic_bazaar/widgets/retro_button.dart';

class OrderItem extends StatelessWidget {
  const OrderItem(
      {this.title,
      this.image,
      this.ordered,
      this.status,
      this.delivered = false});
  final String title;
  final String image;
  final String ordered;
  final String status;
  final bool delivered;

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Expanded(
          child: RelicBazaarStackedView(
            width: width * 0.35,
            height: width * 0.35,
            upperColor: Colors.white,
            child: Image.asset(
              image,
              fit: BoxFit.scaleDown,
            ),
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        Expanded(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                title,
                overflow: TextOverflow.fade,
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w700),
                maxLines: 1,
              ),
              const SizedBox(
                height: 3,
              ),
              Text(
                ordered,
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 13,
                    fontWeight: FontWeight.w700),
              ),
              const SizedBox(height: 10),
              RelicBazaarStackedView(
                width: MediaQuery.of(context).size.width * 0.36,
                height: 35,
                upperColor: Colors.white,
                // decoration: BoxDecoration(
                //     border: Border.all(),
                //     borderRadius: BorderRadius.circular(10),
                //     color: Colors.white),
                child: Center(
                    child: Text(
                  status,
                  style: const TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                  ),
                )),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: <Widget>[
                  Container(
                    padding:
                        const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.white),
                        borderRadius: BorderRadius.circular(8),
                        color: RelicColors.backgroundColor),
                    child: const Text('DETAILS',
                        style: TextStyle(fontSize: 13, color: Colors.white)),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  if (delivered)
                    Container()
                  else
                    Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: 5, horizontal: 5),
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.white),
                          borderRadius: BorderRadius.circular(8),
                          color: RelicColors.warningColor),
                      child: const Text('CANCEL',
                          style: TextStyle(fontSize: 13, color: Colors.white)),
                    ),
                ],
              )
            ],
          ),
        )
      ],
    );
  }
}
