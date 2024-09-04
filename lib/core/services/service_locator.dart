import 'package:fruit_hub/features/auth/data/repos/auth_repo_imp.dart';
import 'package:fruit_hub/features/auth/domain/repos/auth_repo.dart';
import 'package:get_it/get_it.dart';

import 'firebase_auth_services.dart';

final getIt = GetIt.instance;

class ServiceLocator {

  void setup() {
    getIt.registerSingleton<FirebaseAuthServices>(FirebaseAuthServices());

    getIt.registerSingleton<AuthRepo>(AuthRepoImp(
      firebaseAuthServices: getIt<FirebaseAuthServices>(),
    ));
  }

}


