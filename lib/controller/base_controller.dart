import 'package:base_client/helper/dialog.dart';
import 'package:base_client/services/app_exceptions.dart';

class BaseController {
  void handleError(error) {
    if (error is FetchDataException) {
      String message = error.message!;
      HelperDialog.showErrorDialog(description: message);
    } else if (error is BadRequestException) {
      String message = error.message!;
      HelperDialog.showErrorDialog(description: message);
    } else if (error is ApiNotRespondingException) {
      HelperDialog.showErrorDialog(
          description: "Oops! It took to long to load API");
    }
  }
}
