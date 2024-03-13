import 'dart:html' show document;
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:linkfive_flutter_web/src/utils/mrs_log.dart';

const String envToken = String.fromEnvironment("TOKEN", defaultValue: "");

final tokenProvider = Provider<String>((ref) {
  if (envToken.isNotEmpty) {
    return envToken;
  }
  final flutterToken = document.cookie!
      .split("; ")
      .map((item) {
        final split = item.split("=");
        if (split.length < 2) {
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

// This is just for testing
const String userEmailForTest = String.fromEnvironment("USER_EMAIL", defaultValue: "");
const String userPasswordForTest = String.fromEnvironment("USER_PASSWORD", defaultValue: "");

Future<void> setAccessTokenWhenTesting() async {
  if (userEmailForTest.isNotEmpty && userPasswordForTest.isNotEmpty) {
    FirebaseAuth.instance
        .authStateChanges()
        .listen((User? user) async {
      if (user == null) {
        print('User is currently signed out!');
      } else {
        final token = await user.getIdToken();
        MrsLog.d("saving token: $token");
        document.cookie = "flutter.token=$token;path=/;";
      }
    });

    await FirebaseAuth.instance.signInWithEmailAndPassword(
      email: userEmailForTest,
      password: userPasswordForTest,
    );
  } else {
    MrsLog.d("no testing user and password found in environment.");
  }
}
