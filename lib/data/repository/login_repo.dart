import 'dart:developer';

import 'package:color_blindness/core/utils/shared/erorr/exceptions_service.dart';
import 'package:color_blindness/core/utils/shared/erorr/failur.dart';
import 'package:color_blindness/core/utils/shared/erorr/remote_erorr.dart';
import 'package:color_blindness/data/datasource/login_data_source.dart';
import 'package:color_blindness/domain/entities/login_entity.dart';
import 'package:color_blindness/domain/repository/base_loin_repository.dart';
import 'package:dartz/dartz.dart';

class LoginRepoRemote extends BaseLoginRepo {
  final BaseRemoteDataSource baseRemoteDataSource;

  LoginRepoRemote(this.baseRemoteDataSource);

  @override
  Future<Either<ServiceExceptions, LoginEntityModel>> postLogin(
      String email, String password) async {
    try {
      final repo =
          await baseRemoteDataSource.login(email: email, password: password);
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
