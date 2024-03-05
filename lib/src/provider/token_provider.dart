import 'dart:html' show document;
import 'package:flutter_riverpod/flutter_riverpod.dart';

const String envToken = String.fromEnvironment("TOKEN", defaultValue: "");

final tokenProvider = Provider<String>((ref) {
  if(envToken.isNotEmpty){
    return envToken;
  }
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
    throw Exception("No Auth Token");
  }
  return flutterToken.value.replaceAll('"', '');
});
