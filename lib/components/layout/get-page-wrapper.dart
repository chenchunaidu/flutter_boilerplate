import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'bottom-navigation-bar.dart';

class PageWrapper {
  final String path;
  final Widget child;
  final bool? navbar;

  PageWrapper({required this.path, required this.child, this.navbar});
}

List<GetPage<dynamic>> getPageWrapper(List<PageWrapper> pages) {
  return pages
      .map((e) => GetPage(
          name: e.path,
          page: () => ScaffoldWithBottomNavBar(
                navbar: e.navbar,
                child: e.child,
              )))
      .toList();
}
