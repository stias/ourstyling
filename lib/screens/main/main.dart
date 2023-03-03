import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../header/Header.dart';
import 'components/navigatorBar.dart';

class Main extends StatefulWidget {
  const Main({super.key});

  @override
  State<Main> createState() => _MainState();
}

class _MainState extends State<Main> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppHeader(),
        bottomNavigationBar: NavigatorBar(),
        body: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                Image.asset("assets/banner.jpg"),
                Container(
                  padding: EdgeInsets.only(top: 24),
                  width: MediaQuery.of(context).size.width - 48,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: double.infinity,
                        height: 36,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: 20,
                          itemBuilder: (BuildContext context, int index) {
                            return Padding(
                              padding: const EdgeInsets.only(right: 4),
                              child: Container(
                                clipBehavior: Clip.hardEdge,
                                decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Color(0xFF17203A).withOpacity(0.8),
                                    ),
                                    borderRadius: BorderRadius.circular(40)),
                                padding: EdgeInsets.symmetric(horizontal: 12),
                                child: Row(children: [
                                  Icon(
                                    CupertinoIcons.alarm,
                                    color: Colors.black,
                                    size: 12,
                                  ),
                                  Padding(padding: EdgeInsets.only(right: 4)),
                                  Text(
                                    "카테고리$index",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16,
                                    ),
                                  ),
                                ]),
                              ),
                            );
                          },
                        ),
                      ),
                      Padding(padding: EdgeInsets.only(top: 24)),
                      Text(
                        "내게 맞는 스타일",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 24,
                        ),
                      ),
                      Padding(padding: EdgeInsets.only(top: 12)),
                      Container(
                        width: double.infinity,
                        height: 200,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: 20,
                          itemBuilder: (BuildContext context, int index) {
                            return SizedBox(
                              width: 160,
                              child: Padding(
                                padding: const EdgeInsets.only(right: 12),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Image.asset("assets/sample.jpg"),
                                    Padding(padding: EdgeInsets.only(top: 8)),
                                    Text("브랜드",
                                        style: TextStyle(
                                          fontSize: 14,
                                          color: Colors.grey,
                                        )),
                                    Padding(padding: EdgeInsets.only(top: 4)),
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
                                              fontSize: 18, color: Colors.red),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                      Padding(padding: EdgeInsets.only(top: 24)),
                      Text(
                        "실시간 인기 브랜드",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 24,
                        ),
                      ),
                      Padding(padding: EdgeInsets.only(top: 12)),
                      Container(
                        child: Column(
                          children: [
                            Row(
                              children: [
                                SizedBox(
                                  width: 121,
                                  child: Padding(
                                    padding: const EdgeInsets.only(right: 12),
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
                                                  fontSize: 18,
                                                  color: Colors.red),
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 121,
                                  child: Padding(
                                    padding: const EdgeInsets.only(right: 12),
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
                                                  fontSize: 18,
                                                  color: Colors.red),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 121,
                                  child: Padding(
                                    padding: const EdgeInsets.only(right: 12),
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
                                                  fontSize: 18,
                                                  color: Colors.red),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            ),
                            Padding(padding: EdgeInsets.only(bottom: 12)),
                            Row(
                              children: [
                                SizedBox(
                                  width: 121,
                                  child: Padding(
                                    padding: const EdgeInsets.only(right: 12),
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
                                                  fontSize: 18,
                                                  color: Colors.red),
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 121,
                                  child: Padding(
                                    padding: const EdgeInsets.only(right: 12),
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
                                                  fontSize: 18,
                                                  color: Colors.red),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 121,
                                  child: Padding(
                                    padding: const EdgeInsets.only(right: 12),
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
                                                  fontSize: 18,
                                                  color: Colors.red),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                      Padding(padding: EdgeInsets.only(top: 24)),
                      Container(
                        height: 40,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(
                            color: const Color(0xffd3d3d3 ),
                          )
                        ),
                        child: Center(
                          child: Text(
                            "추천 상품 더보기 >",
                            style: TextStyle(
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ),
                      Padding(padding: EdgeInsets.only(top: 24)),
                    ],
                  ),
                ),
              ],
            )
        )
    );
  }
}
