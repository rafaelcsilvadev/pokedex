import 'package:logger/logger.dart';

class Failure implements Exception {
  Failure.warning({
    required this.name,
    required this.message,

  }) {
    _logger.w('$name: $message');
  }

  Failure.error({
    required this.name,
    required this.message,
  }) {
    _logger.e('$name: $message');
  }

  String name;
  String message;
  dynamic response;

  final Logger _logger = Logger();
}
