import 'package:color_blindness/core/utils/shared/erorr/exceptions_service.dart';
import 'package:color_blindness/data/model/register_factory.dart';
 import 'package:dartz/dartz.dart';

abstract class BaseRegisterRepo {
 
  Future<Either<ServiceExceptions, RegisterFactory>> register(
      String email, String password, String name);
}
