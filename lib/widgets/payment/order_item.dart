import 'package:flutter/material.dart';
import 'package:retro_shopping/helpers/constants.dart';

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
        Expanded(
          child: Stack(
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
        ),
        SizedBox(
          width: 10,
        ),
        Expanded(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                this.title,
                overflow: TextOverflow.fade,
                style: TextStyle(
                    decoration: TextDecoration.none,
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w700),
                maxLines: 1,
              ),
              SizedBox(
                height: 3,
              ),
              Text(
                this.ordered,
                style: TextStyle(
                    decoration: TextDecoration.none,
                    color: Colors.white,
                    fontSize: 13,
                    fontWeight: FontWeight.w700),
              ),
              SizedBox(height: 10),
              Stack(
                children: [
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
                        border: Border.all(color: Colors.black, width: 1),
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white),
                    child: Center(
                        child: Text(
                      this.status,
                      style: TextStyle(
                          decoration: TextDecoration.none,
                          fontSize: 12,
                          fontWeight: FontWeight.bold),
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
                        color: RelicColors.backgroundColor),
                    child: Text("DETAILS",
                        style: TextStyle(
                            decoration: TextDecoration.none,
                            fontSize: 13,
                            color: Colors.white)),
                  ),
                  SizedBox(width: 10),
                  delivered
                      ? Container()
                      : Container(
                          padding:
                              EdgeInsets.symmetric(vertical: 5, horizontal: 8),
                          decoration: BoxDecoration(
                              border:
                                  Border.all(width: 1.0, color: Colors.white),
                              borderRadius: BorderRadius.circular(8),
                              color: RelicColors.warningColor),
                          child: Text("CANCEL",
                              style: TextStyle(
                                  decoration: TextDecoration.none,
                                  fontSize: 13,
                                  color: Colors.white)),
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
