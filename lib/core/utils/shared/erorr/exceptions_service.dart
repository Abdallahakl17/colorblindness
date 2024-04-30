import 'package:color_blindness/core/utils/shared/erorr/remote_erorr.dart';

class ServiceExceptions implements Exception {
  final ErrorResponse errorResponse;
  const ServiceExceptions({required this.errorResponse});
}

