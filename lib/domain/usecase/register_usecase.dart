import 'package:color_blindness/core/utils/shared/erorr/exceptions_service.dart';
import 'package:color_blindness/domain/entities/login_entity.dart';
 import 'package:color_blindness/domain/repository/base_register_repository.dart';
import 'package:dartz/dartz.dart';

class RegisterUsecase {
  BaseRegisterRepo baseRegisterRepo;
  RegisterUsecase(this.baseRegisterRepo);
  Future<Either<ServiceExceptions, LoginEntityModel>> excute(
      String email, String password, String name) async {
    return baseRegisterRepo.register(email, password, name);
  }
}
