import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:linkfive_flutter_web/src/components/width_limit_component.dart';
import 'package:linkfive_flutter_web/src/pages/offerings_page/components/info_offering_component.dart';
import 'package:linkfive_flutter_web/src/pages/offerings_page/components/offering_component.dart';
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
    return Scaffold(
        body: offerings.when(
      data: (data) => WidthLimitComponent(
          child: ListView(
        children: [
          const InfoOfferingComponent(),
          for(final offering in data.deliveryPackageList)
            OfferingComponent(offering),
        ],
      )),
      loading: () => const Center(
        child: Column(
          children: [CircularProgressIndicator()],
        ),
      ),
      error: (e, s) => Text(e.toString()),
    ));
  }
}
