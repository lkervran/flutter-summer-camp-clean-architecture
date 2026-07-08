import 'package:auto_route/auto_route.dart';
import 'package:cabins_presentation/cabins_presentation.dart';

part 'app_router.gr.dart';

/// The app's root route tree, assembled in the composition layer.
///
/// It composes routes that the feature packages expose — here, `CabinsRoute`
/// comes from `cabins_presentation`. New features plug their routes in here.
@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: CabinsRoute.page, initial: true),
      ];
}
