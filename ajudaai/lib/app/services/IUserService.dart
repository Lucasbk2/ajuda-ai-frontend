import 'package:ajudaai/app/shared/models/User.dart';

abstract class IuserService {
  Future<List<User>> getAllUsers();
  Future<int> insertUser(User user);

  Future<bool> doLogin(String login, String email);
  Future<bool> doRegister(User user);
  Future<bool> verifyLogin();

}
