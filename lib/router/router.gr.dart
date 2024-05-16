// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'router.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    CardItemsRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const CardItemsPage(),
      );
    },
    DetailBookRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const DetailBookPage(),
      );
    },
    HomeRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const HomePage(),
      );
    },
    ProfileRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: ProfilePage(),
      );
    },
    ReadingRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const ReadingPage(),
      );
    },
  };
}

/// generated route for
/// [CardItemsPage]
class CardItemsRoute extends PageRouteInfo<void> {
  const CardItemsRoute({List<PageRouteInfo>? children})
      : super(
          CardItemsRoute.name,
          initialChildren: children,
        );

  static const String name = 'CardItemsRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [DetailBookPage]
class DetailBookRoute extends PageRouteInfo<void> {
  const DetailBookRoute({List<PageRouteInfo>? children})
      : super(
          DetailBookRoute.name,
          initialChildren: children,
        );

  static const String name = 'DetailBookRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [HomePage]
class HomeRoute extends PageRouteInfo<void> {
  const HomeRoute({List<PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [ProfilePage]
class ProfileRoute extends PageRouteInfo<void> {
  const ProfileRoute({List<PageRouteInfo>? children})
      : super(
          ProfileRoute.name,
          initialChildren: children,
        );

  static const String name = 'ProfileRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [ReadingPage]
class ReadingRoute extends PageRouteInfo<void> {
  const ReadingRoute({List<PageRouteInfo>? children})
      : super(
          ReadingRoute.name,
          initialChildren: children,
        );

  static const String name = 'ReadingRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}
