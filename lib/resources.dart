import 'basenetwork.dart';

class ConvertDataSource {
  static ConvertDataSource instance = ConvertDataSource();
   Future<Map<String, dynamic>> loadConvertUSD() {
    return BaseNetwork.get("?have=IDR&want=USD&amount=1000000");
  }
   Future<Map<String, dynamic>> loadConvertEUR() {
    return BaseNetwork.get("?have=IDR&want=EUR&amount=1000000");
  }
  Future<Map<String, dynamic>> loadConvertYEN() {
    return BaseNetwork.get("?have=IDR&want=JPY&amount=1000000");
  }
  Future<Map<String, dynamic>> loadConvertWON() {
    return BaseNetwork.get("?have=IDR&want=KRW&amount=1000000");
  }
  Future<Map<String, dynamic>> loadConvertMYR() {
    return BaseNetwork.get("?have=IDR&want=MYR&amount=1000000");
  }
  Future<Map<String, dynamic>> loadConvertTHB() {
    return BaseNetwork.get("?have=IDR&want=THB&amount=1000000");
  }
}