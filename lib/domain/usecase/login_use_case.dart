import 'package:color_blindness/core/utils/shared/erorr/exceptions_service.dart';
import 'package:color_blindness/domain/entities/login_entity.dart';
import 'package:color_blindness/domain/repository/base_loin_repository.dart';
import 'package:dartz/dartz.dart';

class LoginUsecase {
  BaseLoginRepo baseLoginRepo;
  LoginUsecase(this.baseLoginRepo);
Future<Either<ServiceExceptions, LoginEntityModel>> excute(String email, String password) async {
    return   baseLoginRepo.postLogin(email, password);
  }
}
