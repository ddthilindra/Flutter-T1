import 'package:api/models/user.dart';
import 'package:api/pages/users/users_provider.dart';
import 'package:get/get.dart';

class UsersController extends GetxController {
  List<User> usersList = [];
  bool isLoading = true;
  @override
  void onInit() {
    UserProvider().getUsersList(
      onSuccess: (users) {
        usersList.addAll(users);
        isLoading = false;
        update();
      },
      onError: (error) {
        // isLoading = false;
        // update();
        print("Error");
      },
    );
    super.onInit();
  }
}