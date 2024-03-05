import 'dart:html' show document;
import 'package:flutter_riverpod/flutter_riverpod.dart';

final tokenProvider = Provider<String>((ref) {
  final flutterToken = document.cookie!
      .split("; ")
      .map((item) {
        final split = item.split("=");
        if(split.length < 2){
          return null;
        }
        return MapEntry(split[0], split[1]);
      })
      .where((element) => element?.key == "flutter.token")
      .firstOrNull;
  if (flutterToken == null) {
    document.cookie = "flutter.token=no-token;path=/;";
    throw Exception("No Auth Token");
  }
  print(flutterToken);
  return flutterToken.value;
});
