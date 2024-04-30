import 'package:color_blindness/core/utils/shared/erorr/exceptions_service.dart';
import 'package:color_blindness/domain/entities/login_entity.dart';
import 'package:dartz/dartz.dart';

abstract class BaseLoginRepo {
  Future<Either<ServiceExceptions, LoginEntityModel>> postLogin(String email,String password);
}
