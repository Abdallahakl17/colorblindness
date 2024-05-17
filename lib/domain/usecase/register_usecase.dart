import 'package:color_blindness/core/utils/shared/erorr/exceptions_service.dart';
import 'package:color_blindness/data/model/register_factory.dart';
  import 'package:color_blindness/domain/repository/base_register_repository.dart';
import 'package:dartz/dartz.dart';

class RegisterUsecase {
  BaseRegisterRepo baseRegisterRepo;
  RegisterUsecase(this.baseRegisterRepo);
  Future<Either<ServiceExceptions, RegisterFactory>> excute(
      String email, String password, String name) async {
    return baseRegisterRepo.register(email, password, name);
  }
}
