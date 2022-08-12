import 'datasource/route_request_datasource.dart';
import 'usecases/create_requests.dart';

class Inject {
  static CreateRequests createRequest() => CreateRequests(RoutesRequestDataSource());
}
