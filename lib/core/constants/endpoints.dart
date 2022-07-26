import 'package:flutter_dotenv/flutter_dotenv.dart';

abstract class Endpoints {
  static final prodBaseUrl = dotenv.env["BASE_URL_PROD"]!;

  static const String _v1 = '/v1';
}

abstract class Queries {}
