import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:linkfive_flutter_web/src/provider/path_parameter_provider.dart';
import 'package:linkfive_flutter_web/src/repository/http/dio_provider.dart';
import 'package:linkfive_flutter_web/src/repository/api/offerings_api_repository.dart';

final offeringsApiRepository = Provider<OfferingsApiRepository>((ref) {
  final dio = ref.watch(dioProvider);
  return OfferingsApiRepository(dio);
});
