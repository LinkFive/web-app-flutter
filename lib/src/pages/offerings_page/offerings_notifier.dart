import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:linkfive_flutter_web/src/provider/path_parameter_provider.dart';
import 'package:linkfive_flutter_web/src/repository/api/offerings_model.dart';
import 'package:linkfive_flutter_web/src/repository/repository_provider.dart';

final offeringsNotifier = AsyncNotifierProvider<OfferingsNotifier, OfferingsModel?>(() => OfferingsNotifier(), dependencies: [currentAppIdProvider]);

class OfferingsNotifier extends AsyncNotifier<OfferingsModel?> {
  @override
  Future<OfferingsModel> build() async {
    final appId = ref.watch(currentAppIdProvider);
    return await ref.read(offeringsApiRepository).getOfferings(appId);
  }
}