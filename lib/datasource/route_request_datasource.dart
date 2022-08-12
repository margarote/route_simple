import 'package:shelf/shelf.dart';
import 'package:shelf_router/shelf_router.dart';

import '../models/app_module_route.dart';
import '../repository/i_module_route.dart';

class RoutesRequestDataSource extends IRepositoryModuleRoute {
  @override
  Handler createRequest(AppModuleRoute routes) {
    final router = Router(
      notFoundHandler: (request) => Response.notFound('Not Found'),
    );

    for (var moduleRoute in routes.routes) {
      for (var routeElement in moduleRoute.routes) {
        final type = routeElement.routeType.name.toUpperCase();
        final path = routeElement.path;
        final request = routeElement.request;

        router.add(
          type,
          path,
          request,
        );
      }
    }

    return router;
  }
}
