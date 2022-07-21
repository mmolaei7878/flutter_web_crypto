import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:web_exam/routes/app_routes.dart';
import 'package:web_exam/view/responsive_widget.dart';

enum WhyFarther { harder, smarter, selfStarter, tradingCharter }

class CustomAppBar extends StatelessWidget {
  CustomAppBar({Key? key, this.body = const []}) : super(key: key);
  final GlobalKey globalKey2 = GlobalKey();
  final List<Widget> body;

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverPadding(
          padding: EdgeInsets.only(top: 20, left: 20, right: 20),
          sliver: SliverAppBar(
            automaticallyImplyLeading: false,
            elevation: 20,
            pinned: true,
            actions: [
              if (Responsive.isDesktop(context))
                Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Material(
                      borderRadius: BorderRadius.circular(20),
                      child: MaterialButton(
                        color: Colors.amber,
                        elevation: 5,
                        height: 90,
                        clipBehavior: Clip.antiAlias,
                        minWidth: 150,
                        padding: EdgeInsets.all(10),
                        onPressed: () {},
                        child: Text("Get Access"),
                      ),
                    )),
              SizedBox(
                width: Get.width * 0.1,
              )
            ],
            title: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextButton(
                      onPressed: () {
                        Get.toNamed(RouteNames.homeScreenRouteName);
                      },
                      child: const Text('Home'),
                      onHover: (v) {}),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextButton(
                      onPressed: () {
                        Get.toNamed(RouteNames.aboutScreenRouteName);
                      },
                      child: const Text('About')),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: MouseRegion(
                    key: globalKey2,
                    child: TextButton(onPressed: () {}, child: const Text('Press Me'), onHover: (v) {}),
                    onEnter: (v) {
                      Offset offset = Offset(-125, -30);

                      final RenderBox button = globalKey2.currentContext?.findRenderObject() as RenderBox;
                      final RenderBox overlay = Overlay.of(context)?.context.findRenderObject() as RenderBox;
                      final RelativeRect position = RelativeRect.fromRect(
                        Rect.fromPoints(
                          button.localToGlobal(Offset.zero, ancestor: overlay),
                          button.localToGlobal(button.size.bottomRight(Offset.zero), ancestor: overlay),
                        ),
                        offset & overlay.size,
                      );
                      showMenu(
                          context: context,
                          position: position,
                          useRootNavigator: true,
                          items: <PopupMenuEntry<WhyFarther>>[
                            const PopupMenuItem<WhyFarther>(
                              value: WhyFarther.harder,
                              child: Text('Working a lot harder'),
                            ),
                            const PopupMenuItem<WhyFarther>(
                              value: WhyFarther.smarter,
                              child: Text('Being a lot smarter'),
                            ),
                            const PopupMenuItem<WhyFarther>(
                              value: WhyFarther.selfStarter,
                              child: Text('Sub Menu long'),
                            ),
                            const PopupMenuItem<WhyFarther>(
                              value: WhyFarther.tradingCharter,
                              child: Text('Placed in charge of trading charter'),
                            ),
                          ]).then((value) {});
                    },
                    onExit: (v) {
                      //Get.back();
                      // final RenderObject? renderObject = globalKey.currentContext?.findRenderObject();
                      // RenderAbstractViewport viewport = RenderAbstractViewport.of(renderObject)!;
                      // final ss = viewport.getOffsetToReveal(renderObject!, 1.0).offset;
                      // if (ss > 0.0) {
                      //   if (Navigator.canPop(context)) {
                      //     Navigator.pop(context);
                      //   }
                      // }
                    },
                  ),
                ),
              ],
            ),
            floating: false,
            flexibleSpace: Container(
              color: Colors.blueAccent,
            ),
            expandedHeight: 100,
          ),
        ),
        SliverPadding(
          padding: EdgeInsets.only(left: 20, right: 20),
          sliver: SliverList(delegate: SliverChildListDelegate([...body])),
        )
      ],
    );
  }
}
