import 'package:shelf/shelf.dart';

import '../models/app_module_route.dart';

abstract class IRepositoryModuleRoute {
  Handler createRequest(AppModuleRoute routes);
}
