import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:linkfive_flutter_web/src/pages/dashboard_page.dart';
import 'package:linkfive_flutter_web/src/pages/offerings_page/offerings_page.dart';
import 'package:linkfive_flutter_web/src/provider/path_parameter_provider.dart';

part 'main_router.g.dart';

const String envInitialRoute = String.fromEnvironment("INITIAL_ROUTE", defaultValue: "");

final mainRouter = GoRouter(
  initialLocation: envInitialRoute.isNotEmpty ? envInitialRoute : dashboardRoute,
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
  Widget build(BuildContext context, GoRouterState state) => ProviderScope(
        overrides: [currentAppIdProvider.overrideWith((_) => appId)],
        child: OfferingsPage(appId: appId),
      );
}
