import 'package:ajudaai/app/services/IUserService.dart';
import 'package:ajudaai/app/services/graphql_operation/queries/ReadUsers.dart';
import 'package:ajudaai/app/shared/models/User.dart';
import 'package:ajudaai/app/services/graphql_operation/CustomGraphqlClient.dart';

class UserService implements IuserService {
 CustomGraphqlClient _customGraphqlClient = CustomGraphqlClient();

  /*
  Future< List<User> > getAllUsers() async {

    final result = await _customGraphqlClient.searchQuery(testeReadAllUSers);
    print(result);
    return List.empty();
    */

  Future<List<User>> getAllUsers() async {
    print(readAllUsers);
    final result = _customGraphqlClient.searchQuery(testeReadAllUSers);
    print(result);
    return List.empty();;
  }
}
