
import 'package:go_router/go_router.dart';
import 'package:linkfive_flutter_web/src/pages/dashboard_page.dart';
import 'package:linkfive_flutter_web/src/pages/offerings_page.dart';

final mainRouter = GoRouter(
  initialLocation: AppRoute.dashboard.path,
  routes: [
    GoRoute(
      path: AppRoute.dashboard.path,
      builder: (_, __) {
        return const DashboardPage();
      },
    ),
    GoRoute(
      path: AppRoute.offerings.path,
      builder: (_, state) {
        final appId = state.pathParameters["appId"] ?? (throw Exception("App ID is null"));
        return OfferingsPage(appId: appId);
      },
    ),
  ],
);

enum AppRoute {
  dashboard("/"),
  offerings("/a/:appId/offerings")
  ;
  const AppRoute(this.path);

  final String path;
}
