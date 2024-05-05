import 'package:color_blindness/data/datasource/login_data_source.dart';
import 'package:color_blindness/data/repository/login_repo.dart';
import 'package:color_blindness/domain/repository/base_loin_repository.dart';
import 'package:color_blindness/domain/usecase/login_use_case.dart';
import 'package:color_blindness/presentaions/controller/cubits/auth_cubit.dart';
import 'package:get_it/get_it.dart';

final sl = GetIt.instance;

class Sevices {
  void init() {
   
    //data source layyer
    sl.registerLazySingleton<BaseRemoteDataSource>(
        () => LoginRemoteDataSource());

    //repo
    sl.registerLazySingleton<BaseLoginRepo>(() => LoginRepoRemote(sl()));

//usecase
    sl.registerLazySingleton(() => LoginUsecase(sl())); 
    //cubit
    sl.registerFactory(() => AuthCubit(sl()));
  }
}
