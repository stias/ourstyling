import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppHeader extends StatelessWidget implements PreferredSizeWidget {
  const AppHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Container(
          color: Colors.black,
          child: Padding(
            padding: const EdgeInsets.only(top: 20, bottom: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 16),
                  child: Text(
                    "OurStyling",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontFamily: "OpenSans",
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 24),
                      child: Icon(
                        Icons.search,
                        color: Colors.white,
                        size: 24,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 24),
                      child: Icon(
                        Icons.add_alert,
                        color: Colors.white,
                        size: 24,
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        )
    );
  }

  Size get preferredSize => Size.fromHeight(100);
}

