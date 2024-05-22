import 'package:test_movie/data/repository/auth_repository.dart';
import 'package:test_movie/data/service/local_storage/local_storage_service.dart';

class AuthRepositoryImpl implements AuthRepository {
  const AuthRepositoryImpl({
    required this.localStorageService,
  });

  final LocalStorageService localStorageService;
}
