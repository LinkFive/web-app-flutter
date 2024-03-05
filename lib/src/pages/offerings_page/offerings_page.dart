import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:linkfive_flutter_web/src/pages/offerings_page/offerings_notifier.dart';
import 'package:linkfive_flutter_web/src/provider/path_parameter_provider.dart';
import 'package:linkfive_flutter_web/src/provider/token_provider.dart';
import 'package:linkfive_flutter_web/src/repository/repository_provider.dart';

class OfferingsPage extends ConsumerWidget {
  final String appId;

  const OfferingsPage({
    super.key,
    required this.appId,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final offerings = ref.watch(offeringsNotifier);
    print(offerings);
    return ProviderScope(
      overrides: [currentAppIdProvider.overrideWith((_) => appId)],
      child: const Scaffold(
        body: Text("Offerings"),
      ),
    );
  }
}
