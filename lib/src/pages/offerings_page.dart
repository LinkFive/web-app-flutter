import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:linkfive_flutter_web/src/provider/token_provider.dart';

class OfferingsPage extends ConsumerWidget {
  final String appId;

  const OfferingsPage({
    super.key,
    required this.appId,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final token = ref.watch(tokenProvider);
    print(token);
    return const Scaffold(
      body: Text("Hallo OfferingsPage"),
    );
  }
}
