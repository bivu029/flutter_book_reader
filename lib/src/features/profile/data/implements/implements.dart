
    import '../sources/sources.dart';
    import '../../domain/repositories/repositories.dart';
    
    class ProfileRepositoryImp implements ProfileRepository{

        final ProfileRemoteDataSource remoteDataSource;
        ProfileRepositoryImp({required this.remoteDataSource});
      
        // ... example ...
        //
        // Future<User> getUser(String userId) async {
        //     return remoteDataSource.getUser(userId);
        //   }
        // ...
    }
    