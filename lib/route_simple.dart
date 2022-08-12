library route_simple;

import 'package:shelf/shelf.dart';

import 'inject.dart';
import 'models/app_module_route.dart';

class RouteSimple {
  static Handler init(AppModuleRoute appModuleRoute) {
    return Inject.createRequest().call(appModuleRoute);
  }
}
