class Endpoints {
  Endpoints._();

  static const Duration receiveTimeout = Duration(milliseconds: 15000);
  static const Duration connectionTimeout = Duration(milliseconds: 15000);

  static const String baseUrl = 'http://regres.in/api';
  static const String examples = '/examples';

  //MATCH
  static const String matches = '/matches';
  static const String matchesByUserId = '/matchesByUserId';

  //USER
  static const String loggedUser = '/loggedUser';
  static const String userById = '/userById';

  //PLAYER
  static const String playerById = '/playerById';

  //CLUB
  static const String clubs = '/clubs';
}
