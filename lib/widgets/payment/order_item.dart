import 'package:flutter/material.dart';
import 'package:retro_shopping/helpers/constants.dart';

class OrderItem extends StatelessWidget {
  const OrderItem(
      {required this.title,
      required this.image,
      required this.ordered,
      required this.status,
      this.delivered = false});
  final String title;
  final String image;
  final String ordered;
  final String status;
  final bool delivered;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Expanded(
          child: Stack(
            children: <Widget>[
              Container(
                width: 140,
                height: 170,
                decoration: const BoxDecoration(color: Colors.black),
              ),
              Container(
                width: 135,
                height: 165,
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: Colors.white,
                    image: DecorationImage(
                        image: AssetImage(image), fit: BoxFit.scaleDown)),
              ),
            ],
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
              Stack(
                children: <Widget>[
                  Container(
                    width: MediaQuery.of(context).size.width * 0.36 + 3,
                    height: 38,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.black),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.36,
                    height: 35,
                    decoration: BoxDecoration(
                        border: Border.all(),
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white),
                    child: Center(
                        child: Text(
                      status,
                      style: const TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    )),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: <Widget>[
                  Container(
                    padding:
                        const EdgeInsets.symmetric(vertical: 5, horizontal: 8),
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
                          vertical: 5, horizontal: 8),
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
