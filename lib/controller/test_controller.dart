import 'package:base_client/controller/base_controller.dart';
import '../services/base_client.dart';

class TestController extends BaseController {
  void getData() {
    var response = BaseClient()
        .get("https://jsonplaceholder.typicode.com", "/todos/1")
        .catchError(handleError);
    if (response == null) return;
    print(response);
  }
}
