import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NavigatorBar extends StatelessWidget {
  const NavigatorBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(bottom: 4),
        child: Container(
          padding: EdgeInsets.all(12),
          margin: EdgeInsets.symmetric(horizontal: 24),
          decoration: BoxDecoration(
            color: Color(0xFF17203A).withOpacity(0.8),
            borderRadius: BorderRadius.all(Radius.circular(24)),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                height: 36,
                width: 36,
                child: Container(
                  child: Icon(
                    Icons.home_filled,
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(
                height: 36,
                width: 36,
                child: Container(
                  child: Icon(
                    Icons.search,
                    color: Colors.grey,
                  ),
                ),
              ),
              SizedBox(
                height: 36,
                width: 36,
                child: Container(
                  child: Icon(
                    Icons.shopping_bag,
                    color: Colors.grey,
                  ),
                ),
              ),
              SizedBox(
                height: 36,
                width: 36,
                child: Container(
                  child: Icon(
                    Icons.comment,
                    color: Colors.grey,
                  ),
                ),
              ),
              SizedBox(
                height: 36,
                width: 36,
                child: Container(
                  child: Icon(
                    Icons.account_circle,
                    color: Colors.grey,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}