class Endpoints {
  Endpoints._();

  static const Duration receiveTimeout = Duration(milliseconds: 15000);
  static const Duration connectionTimeout = Duration(milliseconds: 15000);

  static const String baseUrl = 'http://regres.in/api';
  static const String examples = '/examples';
}
