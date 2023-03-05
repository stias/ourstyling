import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BestItem extends StatelessWidget {
  const BestItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 121,
      child: Column(
        crossAxisAlignment:
        CrossAxisAlignment.start,
        children: [
          Image.asset("assets/sample.jpg"),
          Padding(
              padding: EdgeInsets.only(top: 8)),
          Text("브랜드",
              style: TextStyle(
                fontSize: 14,
                color: Colors.grey,
              )),
          Padding(
              padding: EdgeInsets.only(top: 4)),
          Row(
            mainAxisAlignment:
            MainAxisAlignment.spaceBetween,
            children: [
              Text("29,800원",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  )),
              Text(
                "32%",
                style: TextStyle(
                    fontSize: 12,
                    color: Colors.red),
              ),
            ],
          )
        ],
      ),
    );
  }
}
