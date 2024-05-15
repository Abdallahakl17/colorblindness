import 'package:color_blindness/data/datasource/login_data_source.dart';
import 'package:color_blindness/data/datasource/register_data_source.dart';
import 'package:color_blindness/data/repository/login_repo.dart';
import 'package:color_blindness/data/repository/register_repo.dart';
import 'package:color_blindness/domain/repository/base_loin_repository.dart';
import 'package:color_blindness/domain/repository/base_register_repository.dart';
import 'package:color_blindness/domain/usecase/login_use_case.dart';
import 'package:color_blindness/domain/usecase/register_usecase.dart';
import 'package:color_blindness/presentaions/controller/cubits/login_cubit.dart';
import 'package:color_blindness/presentaions/controller/cubits/register_cubit.dart';
import 'package:get_it/get_it.dart';

final sl = GetIt.instance;

class Sevices {
  void init() {
    //data source layyer
    sl.registerLazySingleton<BaseRemoteDataSource>(
        () => LoginRemoteDataSource());
    sl.registerLazySingleton<BaseRemoteDataSourceRegister>(
        () => RegisterRemoteDataSource());

    //repo
    sl.registerLazySingleton<BaseLoginRepo>(() => LoginRepoRemote(sl()));
    sl.registerLazySingleton<BaseRegisterRepo>(() => RegisterRepoRemote(sl()));

//usecase
    sl.registerLazySingleton(() => LoginUsecase(sl()));
    sl.registerLazySingleton(() => RegisterUsecase(sl()));
    //cubit
    sl.registerFactory(() => AuthCubit(sl()));
    sl.registerFactory(() => AuthRegisterCubit(sl()));
  }
}
