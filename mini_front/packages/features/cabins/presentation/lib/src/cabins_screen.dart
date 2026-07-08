import 'package:cabins_domain/cabins_domain.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// Lists the camp's cabins.
///
/// All the logic lives in `cabinsProvider` (domain). This widget just watches it
/// and renders the three async states — no business logic in the widget.
class CabinsScreen extends ConsumerWidget {
  const CabinsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final cabins = ref.watch(cabinsProvider);
    return Scaffold(
      appBar: AppBar(title: const Text('🏕️ Cabins')),
      body: cabins.when(
        data: (items) => ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, index) => _CabinTile(cabin: items[index]),
        ),
        error: (error, _) => Center(
          child: Text(
            'Could not load cabins:\n$error',
            textAlign: TextAlign.center,
          ),
        ),
        loading: () => const Center(child: CircularProgressIndicator()),
      ),
    );
  }
}

class _CabinTile extends StatelessWidget {
  const _CabinTile({required this.cabin});

  final Cabin cabin;

  @override
  Widget build(BuildContext context) => ListTile(
    leading: const Text('🛖', style: TextStyle(fontSize: 28)),
    title: Text(cabin.name),
    subtitle: Text(cabin.description),
  );
}
