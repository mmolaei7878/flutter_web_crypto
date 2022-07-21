import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:glassmorphism/glassmorphism.dart';
import 'package:lottie/lottie.dart';
import 'package:web_exam/view/custom_app_bar.dart';
import 'package:web_exam/view/responsive_widget.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);
  CarouselController buttonCarouselController = CarouselController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: CustomAppBar(body: [
        Container(
          height: Get.height * 0.83,
          width: Get.width,
          color: Colors.blueAccent,
          child: Responsive.isDesktop(context)
              ? Row(
                  children: [
                    Expanded(
                        flex: 4,
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: Get.width * 0.05, vertical: Get.height * 0.1),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              FittedBox(
                                child: Text(
                                  "Welcome to the Future\nof Financial Governance",
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    fontSize: 60,
                                    fontWeight: FontWeight.bold,
                                    overflow: TextOverflow.visible,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: Get.height * 0.05,
                              ),
                              Text(
                                "The era of digital assets is upon us, and institutions need a secure and functional way to enter the market. Tardi provides a full-featured asset management system that can handle cryptocurrencies, fractionalized assets, and a variety of other tokens, all under one intuitive interface that fits seamlessly into your existing systems. Combine that with multi-account capabilities, nuanced permissions for different roles, and an institutional-focused interface – and you have a powerful asset management tool that can ease the transition into these new industries. It's a game-changer. And we can't wait for you to be a part of it",
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  fontSize: 20,
                                  overflow: TextOverflow.visible,
                                ),
                              ),
                            ],
                          ),
                        )),
                    Expanded(
                        flex: 3,
                        child: Lottie.network("https://assets7.lottiefiles.com/packages/lf20_2omr5gpu.json",
                            alignment: Alignment.center, fit: BoxFit.contain)),
                  ],
                )
              : Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        children: [
                          FittedBox(
                            child: Text(
                              "Welcome to the Future of\nFinancial Governance",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 60,
                                overflow: TextOverflow.visible,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: Get.height * 0.04,
                          ),
                          Text(
                            "The era of digital assets is upon us, and institutions need a secure and functional way to enter the market. Tardi provides a full-featured asset management system that can handle cryptocurrencies, fractionalized assets, and a variety of other tokens, all under one intuitive interface that fits seamlessly into your existing systems. Combine that with multi-account capabilities, nuanced permissions for different roles, and an institutional-focused interface – and you have a powerful asset management tool that can ease the transition into these new industries. It's a game-changer. And we can't wait for you to be a part of it",
                            softWrap: true,
                            textScaleFactor: 0.6,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 22,
                              overflow: TextOverflow.visible,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Material(
                          borderRadius: BorderRadius.circular(20),
                          child: MaterialButton(
                            color: Colors.amber,
                            elevation: 5,
                            height: 50,
                            clipBehavior: Clip.antiAlias,
                            minWidth: 150,
                            padding: EdgeInsets.all(10),
                            onPressed: () {},
                            child: Text("Get Access"),
                          ),
                        )),
                    Flexible(
                      child: Lottie.network(
                        "https://assets7.lottiefiles.com/packages/lf20_2omr5gpu.json",
                        alignment: Alignment.center,
                        fit: BoxFit.contain,
                      ),
                    ),
                  ],
                ),
        ),
        Container(
          height: Get.height * 1 + 200,
          width: Get.width,
          color: Colors.white,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: Get.height * 0.04,
              ),
              FittedBox(
                child: Container(
                  width: Get.width,
                  margin: EdgeInsets.only(left: Get.width * 0.1),
                  child: Text(
                    "Why Should You Use Tardi?",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: 44,
                      overflow: TextOverflow.visible,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: Get.height * 0.02,
              ),
              Container(
                width: Get.width * 0.8,
                padding: EdgeInsets.all(50),
                child: Center(
                  child: DefaultTabController(
                    length: 6,
                    child: TabBar(
                      labelStyle: TextStyle(),
                      mouseCursor: MouseCursor.defer,
                      onTap: (value) {
                        buttonCarouselController.animateToPage(value);
                      },
                      tabs: [
                        Tab(
                          child: FittedBox(
                            child: Text(
                              "ORGANIZATION-FIRST FOCUS",
                              maxLines: 1,
                            ),
                          ),
                        ),
                        Tab(
                          text: "SECURE",
                        ),
                        Tab(
                          text: "HOT AND COLD WALLET",
                        ),
                        Tab(
                          text: "CROSS PLATFORM",
                        ),
                        Tab(
                          text: "GOING BEYOND CRYPTOCURRENCY",
                        ),
                        Tab(
                          text: "RESTFULL API",
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                height: 500,
                width: Get.width * 0.7,
                padding: EdgeInsets.all(20),
                child: CarouselSlider.builder(
                  carouselController: buttonCarouselController,
                  options: CarouselOptions(
                    scrollPhysics: NeverScrollableScrollPhysics(),
                    autoPlay: true,
                    aspectRatio: 3 / 14,
                    enlargeCenterPage: true,
                    enableInfiniteScroll: true,
                  ),
                  itemCount: 6,
                  itemBuilder: (ctx, index1, index2) => GlassmorphicContainer(
                    width: Get.width * 0.5,
                    height: Get.height * 0.3,
                    borderRadius: 0,
                    blur: 20,
                    alignment: Alignment.bottomCenter,
                    border: 1,
                    linearGradient: LinearGradient(begin: Alignment.topLeft, end: Alignment.bottomRight, colors: [
                      Color(0xFFffffff).withOpacity(0.1),
                      Color(0xFFFFFFFF).withOpacity(0.05),
                    ], stops: [
                      0.1,
                      1,
                    ]),
                    borderGradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        Color(0xFFffffff).withOpacity(0.5),
                        Color((0xFFFFFFFF)).withOpacity(0.5),
                      ],
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                            flex: 2,
                            child: Column(
                              children: [
                                FittedBox(
                                  child: Text(
                                    "Welcome to the Future of\nFinancial Governance",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 60,
                                      overflow: TextOverflow.visible,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: Get.height * 0.04,
                                ),
                                Text(
                                  "fractionalized assets, and a variety of other tokens, all under one intuitive interface that fits seamlessly into your existing systems. Combine that with multi-account capabilities, nuanced permissions for different roles, and an institutional-focused interface – and you have a powerful asset management tool that can ease the transition into these new industries. It's a game-changer. And we can't wait for you to be a part of it",
                                  softWrap: true,
                                  textScaleFactor: 0.6,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 22,
                                    overflow: TextOverflow.visible,
                                  ),
                                ),
                              ],
                            )),
                        Expanded(
                            flex: 1,
                            child: Lottie.network("https://assets2.lottiefiles.com/packages/lf20_8lcyef9f.json",
                                fit: BoxFit.cover)),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
