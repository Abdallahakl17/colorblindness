import 'dart:developer';

import 'package:color_blindness/core/utils/shared/erorr/exceptions_service.dart';
import 'package:color_blindness/data/datasource/register_data_source.dart';
import 'package:color_blindness/domain/entities/login_entity.dart';
import 'package:color_blindness/domain/repository/base_register_repository.dart';
import 'package:dartz/dartz.dart';

class RegisterRepoRemote extends BaseRegisterRepo {
  final BaseRemoteDataSourceRegister baseRemoteDataSourceRegister;

  RegisterRepoRemote(this.baseRemoteDataSourceRegister);

  @override
  Future<Either<ServiceExceptions, LoginEntityModel>> register(
      String email, String password, String name) async {
    try {
      final repo = await baseRemoteDataSourceRegister.register(
          email: email, password: password, name: name);
      return Right(repo);
    } catch (e) {
      if (e is ServiceExceptions) {
        log('Error occurred in repo/login during login: $e');
        return Left(e);
      } else {
        log('Error occurred in repo/login during login: $e');
        return Left(ServiceExceptions(errorResponse: e.toString()));
      }
    }
  }
}
