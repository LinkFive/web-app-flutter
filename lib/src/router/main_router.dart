import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:linkfive_flutter_web/src/pages/dashboard_page.dart';
import 'package:linkfive_flutter_web/src/pages/offerings_page/offerings_page.dart';

part 'main_router.g.dart';

final mainRouter = GoRouter(
  routes: $appRoutes,
);

const dashboardRoute = "/";
const offeringsRoute = "/a/:appId/offerings";

@TypedGoRoute<DashboardRoute>(
  path: dashboardRoute,
)
class DashboardRoute extends GoRouteData {
  const DashboardRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) => const DashboardPage();
}

@TypedGoRoute<OfferingsOverviewRoute>(
  path: offeringsRoute,
)
class OfferingsOverviewRoute extends GoRouteData {
  final String appId;

  const OfferingsOverviewRoute(this.appId);

  @override
  Widget build(BuildContext context, GoRouterState state) => OfferingsPage(appId: appId);
}
