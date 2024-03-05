import 'dart:developer';

class MrsLog{
  static void d(Object? s){
    log(s.toString(), level: 500);
  }
  static void e(Object o, [StackTrace? s]){
    log(o.toString(), level: 1000);
  }
}