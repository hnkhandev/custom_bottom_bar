//author: https://github.com/hnkhandev

import 'package:flutter/material.dart';

class CustomBottomBar extends StatelessWidget {
  final List<CustomBottomBarItem> items;

  CustomBottomBar({Key key, this.items}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double itemWidth = width / 4;

    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        for (final CustomBottomBarItem item in items)
          Container(
            width: itemWidth,
            child: GestureDetector(
              onTap: item.onTap,
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 5),
                child: Align(
                  child: Container(
                    child: item,
                    width: 50,
                    height: 50,
                  ),
                ),
              ),
            ),
          ),
      ],
    );
  }
}

class CustomBottomBarItem extends StatelessWidget {
  final Icon icon;
  final Text text;
  final void Function() onTap;

  CustomBottomBarItem({Key key, this.icon, this.text, this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[icon, text],
    );
  }
}

class CustomBottomBarPageView extends StatelessWidget {
  PageController controller;
  final CustomBottomBar leftBar;
  final CustomBottomBar middleBar;
  final CustomBottomBar rightBar;
  List<CustomBottomBar> bars = [];

  CustomBottomBarPageView(
      {Key key, this.leftBar, @required this.middleBar, this.rightBar})
      : super(key: key) {
    if (leftBar != null) bars.add(leftBar);
    if (middleBar != null) bars.add(middleBar);
    if (rightBar != null) bars.add(rightBar);
    controller = PageController(initialPage: bars.indexOf(middleBar));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      child: PageView(
        controller: controller,
        children: bars,
      ),
    );
  }
}
