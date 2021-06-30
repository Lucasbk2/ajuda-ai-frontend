import 'package:ajudaai/app/services/IUserService.dart';
import 'package:ajudaai/app/services/graphql_operation/CustomGraphqlClient.dart';
import 'package:ajudaai/app/services/graphql_operation/queries/ReadUsers.dart';
import 'package:ajudaai/app/services/graphql_operation/mutations/InsertUserMutation.dart';
import 'package:ajudaai/app/shared/models/User.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

class UserService implements IuserService {
 CustomGraphqlClient _customGraphqlClient = CustomGraphqlClient();

  Future<List<User>> getAllUsers() async {
    final QueryResult result = await _customGraphqlClient.searchQuery(readAllUsers);
    return Future.value( (result.data["users"] as List<dynamic>).map((e) => User( email: e["email"], name: e["name"] )).toList() );
  }

  Future<int> insertUser(User user) async{
    final QueryResult result = await _customGraphqlClient.executeMutatios(strInsertUser, variables: {
      "email": user.email,
      "name": user.name
    });
    print(result);
    return Future.value(1);
  }
}
