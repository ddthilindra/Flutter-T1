import 'package:api/Request/api_request.dart';
import 'package:api/models/user.dart';

class UserProvider {
  void getUsersList({
    Function() ?beforeSend,
    Function(List<User> users) ?onSuccess,
    Function(dynamic error) ?onError,
  }){
    ApiRequest(url: 'https://jsonplaceholder.typicode.com/posts',data: null).get(
      beforeSend: () => {if (beforeSend != null) beforeSend()},
      onSuccess: (data) {
        onSuccess!((data as List).map((userJson) => User.fromJson(userJson)).toList());
      },
      onError: (error) => {if (onError != null) onError(error)},
    );
  }
}