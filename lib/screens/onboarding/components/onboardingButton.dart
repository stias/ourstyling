import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OnboardingButton extends StatelessWidget {
  const OnboardingButton({
    super.key, required this.press,
  });

  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        clipBehavior: Clip.hardEdge,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(60.0),
        ),
        child: SizedBox(
          height: 64,
          width: 260,
          child: Container(
            color: Colors.black,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Icon(
                  CupertinoIcons.arrow_right,
                  color: Colors.white,
                ),
                SizedBox(width: 8),
                Text(
                  "로그인",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.white
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}