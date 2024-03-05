import 'dart:async';

import 'package:dio/dio.dart';
import 'package:linkfive_flutter_web/src/repository/api/offerings_model.dart';
import 'package:linkfive_flutter_web/src/repository/repo_exception.dart';
import 'package:linkfive_flutter_web/src/utils/mrs_log.dart';

class OfferingsApiRepository {
  final Dio dio;

  OfferingsApiRepository(this.dio);

  FutureOr<OfferingsModel> getOfferings(String appId) async {
    try {
      final response = await dio.get("/v1/app/$appId/delivery-package");

      return offeringsModelFromJson(response.data.toString());
    } catch (e, s) {
      MrsLog.e(e, s);
      throw UnknownRepoException.maybeWithDioException(e);
    }
  }
}
