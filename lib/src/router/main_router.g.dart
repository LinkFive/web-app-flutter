// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'main_router.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [
      $dashboardRoute,
      $offeringsOverviewRoute,
    ];

RouteBase get $dashboardRoute => GoRouteData.$route(
      path: '/',
      factory: $DashboardRouteExtension._fromState,
    );

extension $DashboardRouteExtension on DashboardRoute {
  static DashboardRoute _fromState(GoRouterState state) =>
      const DashboardRoute();

  String get location => GoRouteData.$location(
        '/',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $offeringsOverviewRoute => GoRouteData.$route(
      path: '/a/:appId/offerings',
      factory: $OfferingsOverviewRouteExtension._fromState,
    );

extension $OfferingsOverviewRouteExtension on OfferingsOverviewRoute {
  static OfferingsOverviewRoute _fromState(GoRouterState state) =>
      OfferingsOverviewRoute(
        state.pathParameters['appId']!,
      );

  String get location => GoRouteData.$location(
        '/a/${Uri.encodeComponent(appId)}/offerings',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}
