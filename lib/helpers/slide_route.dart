import 'package:flutter/material.dart';

class SlideRightRoute extends PageRouteBuilder {
  final Widget page;
  final RouteSettings settings;

  SlideRightRoute({
    this.page,
    this.settings,
  }) : super(
          pageBuilder: (BuildContext context, Animation<double> animation,
                  Animation<double> secondaryAnimation) =>
              page,
          transitionsBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
            Widget child,
          ) =>
              SlideTransition(
            position: Tween<Offset>(
              begin: const Offset(-1, 0),
              end: Offset.zero,
            ).animate(animation),
            child: child,
          ),
          settings: settings,
        );
}

class SlideLeftRoute extends PageRouteBuilder {
  final Widget page;
  final RouteSettings settings;
  SlideLeftRoute({
    this.page,
    this.settings,
  }) : super(
          pageBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
          ) =>
              page,
          transitionsBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
            Widget child,
          ) =>
              SlideTransition(
            position: Tween<Offset>(
              begin: const Offset(1, 0),
              end: Offset.zero,
            ).animate(animation),
            child: child,
          ),
          settings: settings,
        );
}

class SlideTopRoute extends PageRouteBuilder {
  final Widget page;
  final RouteSettings settings;

  SlideTopRoute({this.page, this.settings})
      : super(
            pageBuilder: (
              BuildContext context,
              Animation<double> animation,
              Animation<double> secondaryAnimation,
            ) =>
                page,
            transitionsBuilder: (
              BuildContext context,
              Animation<double> animation,
              Animation<double> secondaryAnimation,
              Widget child,
            ) =>
                SlideTransition(
                  position: Tween<Offset>(
                    begin: const Offset(0, 1),
                    end: Offset.zero,
                  ).animate(animation),
                  child: child,
                ),
            settings: settings);
}

class SlideBottomRoute extends PageRouteBuilder {
  final Widget page;
  final RouteSettings settings;
  SlideBottomRoute({this.page, this.settings})
      : super(
          pageBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
          ) =>
              page,
          transitionsBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
            Widget child,
          ) =>
              SlideTransition(
            position: Tween<Offset>(
              begin: const Offset(0, -1),
              end: Offset.zero,
            ).animate(animation),
            child: child,
          ),
          settings: settings,
        );
}
