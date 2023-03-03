
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:ui';

import 'components/SignInForm.dart';
import 'components/onboardingButton.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            "assets/background.gif",
            fit: BoxFit.cover,
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
          ),
          Positioned.fill(
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 20, sigmaY: 10),
                child: SizedBox(),
              )
          ),
          SafeArea(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 32),
                child: Column(
                  children: [
                    const Spacer(),
                    SizedBox(
                      width: 260,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            "우리들의",
                            style: TextStyle(
                              backgroundColor: Colors.black,
                              color: Colors.white,
                              fontSize: 60,
                              height: 1.2,
                              fontFamily: 'OpenSans',
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "스타일",
                            style: TextStyle(
                              backgroundColor: Colors.black,
                              color: Colors.white,
                              fontSize: 60,
                              height: 1.2,
                              fontFamily: 'OpenSans',
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "커뮤니티",
                            style: TextStyle(
                              backgroundColor: Colors.black,
                              color: Colors.white,
                              fontSize: 60,
                              height: 1.2,
                              fontFamily: 'OpenSans',
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Spacer(),
                    Center(
                      child: OnboardingButton(
                        press: () {
                          showGeneralDialog(
                              context: context,
                              pageBuilder: (context, _, __) => Center(
                                child: Container(
                                  height: 620,
                                  margin: const EdgeInsets.symmetric(horizontal: 16),
                                  padding: const EdgeInsets.symmetric(vertical: 32, horizontal: 24),
                                  decoration: const BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: 
                                      BorderRadius.all(Radius.circular(40)),
                                  ),
                                  child: Scaffold(
                                    resizeToAvoidBottomInset: false,
                                    backgroundColor: Colors.transparent,
                                    body: Center(
                                      child: Column(
                                        children: const [
                                          Text(
                                            "로그인",
                                            style: TextStyle(
                                              fontSize: 34,
                                              fontWeight: FontWeight.w700,
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.symmetric(vertical: 16),
                                            child: Text(
                                              "설명... 귀찮으니 패스...",
                                              style: TextStyle(
                                                fontSize: 18
                                              )
                                            ),
                                          ),
                                          SignInForm(),
                                        ],
                                      ),
                                    )
                                  ),
                                ),
                              )
                          );
                        },
                      ),
                    ),
                    const Padding(padding: EdgeInsets.symmetric(vertical: 24)),
                  ],
                ),
              )
          ),
        ],
      ),
    );
  }

}

