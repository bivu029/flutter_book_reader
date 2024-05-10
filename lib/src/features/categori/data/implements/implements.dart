
    import '../sources/sources.dart';
    import '../../domain/repositories/repositories.dart';
    
    class CategoriRepositoryImp implements CategoriRepository{

        final CategoriRemoteDataSource remoteDataSource;
        CategoriRepositoryImp({required this.remoteDataSource});
      
        // ... example ...
        //
        // Future<User> getUser(String userId) async {
        //     return remoteDataSource.getUser(userId);
        //   }
        // ...
    }
    