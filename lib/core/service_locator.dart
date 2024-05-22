import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:test_movie/data/repository/auth_repository.dart';
import 'package:test_movie/data/repository/auth_repository_impl.dart';
import 'package:test_movie/data/service/local_storage/shared_prefs_storage_service.dart';
import 'package:test_movie/data/service/network_service/dio_network_service_impl.dart';
import 'package:test_movie/data/service/network_service/network_service.dart';

final getIt = GetIt.instance;
final getDio = getIt.get<Dio>();

void setupServicesLocator() {
  final localeStorage = SharedPrefsStorageService();
  getIt.registerSingleton<NetworkService>(DioNetworkServiceImpl(getDio));
  getIt.registerSingleton<AuthRepository>(AuthRepositoryImpl(
    localStorageService: localeStorage,
  ));
}
