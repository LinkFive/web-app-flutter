class MrsLog{
  static void d(Object s){
    print(s.toString());
  }
  static void e(Object o, [StackTrace? s]){
    print(o.toString());
  }
}