import 'dart:async';

// ignore: depend_on_referenced_packages
import 'package:shelf/shelf.dart';

import '../enum/enum_route_type.dart';

class RequestRoute {
  final RouteType routeType;
  final String path;
  final FutureOr<Response> Function(Request request) request;

  RequestRoute({required this.routeType, required this.path, required this.request});
}
