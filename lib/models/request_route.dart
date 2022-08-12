import 'package:shelf/shelf.dart';

import '../enum/enum_route_type.dart';

class RequestRoute {
  final RouteType routeType;
  final String path;
  final Function(Request) request;

  RequestRoute({required this.routeType, required this.path, required this.request});
}
