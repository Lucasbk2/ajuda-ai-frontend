import 'package:ajudaai/app/shared/models/User.dart';

abstract class IuserService {
  Future<List<User>> getAllUsers();
  Future<int> insertUser(User user);
}
