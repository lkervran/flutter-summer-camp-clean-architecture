import 'package:auto_route/auto_route.dart';
import 'package:cabins_presentation/src/cabins_screen.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

part 'cabins_router.gr.dart';

/// The cabins feature's slice of the route tree.
///
/// Annotating pages with `@RoutePage` makes auto_route generate a typed
/// `CabinsRoute` (in the `.gr.dart` part). The app composes this into its root
/// router — see `camp_app`'s composition layer.
@AutoRouterConfig()
class CabinsRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
    AutoRoute(page: CabinsRoute.page, initial: true),
  ];
}

@RoutePage()
class CabinsPage extends ConsumerWidget {
  const CabinsPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) => const CabinsScreen();
}
