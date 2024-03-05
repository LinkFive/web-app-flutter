import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:linkfive_flutter_web/src/pages/offerings_page/offerings_notifier.dart';
import 'package:linkfive_flutter_web/src/utils/mrs_log.dart';

/// e.g. /#/a/052f8174-2be2-4d42-9326-ce75569b346f/offerings
class OfferingsPage extends ConsumerWidget {
  final String appId;

  const OfferingsPage({
    super.key,
    required this.appId,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final offerings = ref.watch(offeringsNotifier);
    MrsLog.d(offerings);
    return const Scaffold(
      body: Text("Offerings"),
    );
  }
}
