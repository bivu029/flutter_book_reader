import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

/// This is an extension on the BuildContext class
extension AppContext on BuildContext {
  ///this gorouter under the hood
  ///
  /// This method provides a way to navigate to a new route and replace the current route
  ///
  ///It takes a routeName (String) and an optional data object
  Future pushReplacementNamed(String routeName, Object? data) {
    return GoRouter.of(this).pushReplacementNamed(routeName, extra: data);
  }

  ///this gorouter under the hood
  ///
  /// This method provides a way to navigate to a new route
  /// It takes a routeName (String)
  // Future push(String routeName, {Object? data}) {
  //   return GoRouter.of(this).push(routeName ,extra: data);
  // }

  ///this gorouter under the hood
  ///
  /// This method provides a way to navigate to a new route with data
  /// It takes a routeName (String) and an optional data object
  Future pushMyNamed(String routeName, {Object? data}) {
    return GoRouter.of(this).pushNamed(routeName, extra: data);
  }

  ///this gorouter under the hood
  ///
  /// This method provides a way to pop the current route
  void pop() {
    return GoRouter.of(this).pop();
  }

  ///this gorouter under the hood
  ///
  ///This method checks if there is a route to pop
  bool canPop() {
    return GoRouter.of(this).canPop();
  }

  Size get getsize => MediaQuery.of(this).size;
  double get hight => getsize.height;
  double get width => getsize.width;

  ///default 100%
  double heightParcentage({double hparcentage = 100}) {
    return (hight * hparcentage) / 100;
  }

  ///default 100%
  double widthParcentage({double wparcentage = 100}) {
    return (width * wparcentage) / 100;
  }
}
