import 'package:shelf/shelf.dart';

import '../models/app_module_route.dart';
import '../repository/i_module_route.dart';

class CreateRequests {
  final IRepositoryModuleRoute repositoryModuleRoute;

  CreateRequests(this.repositoryModuleRoute);

  Handler call(AppModuleRoute routes) {
    return repositoryModuleRoute.createRequest(routes);
  }
}
