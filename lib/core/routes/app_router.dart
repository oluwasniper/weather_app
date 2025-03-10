import 'package:auto_route/auto_route.dart';
import 'package:weather_app/core/routes/app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  AppRouter({super.navigatorKey});

  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: SplashRoute.page, path: '/splash', initial: true),
        AutoRoute(
          page: HomeRoute.page,
          path: '/home',
          children: [
            AutoRoute(page: BottomNavigationRoute.page, path: 'bottomnav'),
            AutoRoute(page: SettingsRoute.page, path: 'settings'),
          ],
        ),
      ];
}
