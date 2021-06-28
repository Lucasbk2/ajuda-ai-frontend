import 'package:ajudaai/app/services/IUserService.dart';
import 'package:ajudaai/app/services/graphql_operation/queries/ReadUsers.dart';
import 'package:ajudaai/app/shared/models/User.dart';
import 'package:ajudaai/app/utils/GraphqlClient.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

class UserService implements IuserService {
  Future<List<User>> getAllUsers() async {
    print(readAllUsers);
    final _options = QueryOptions(document: gql(readAllUsers));
    final result = await graphQLClient.query(_options);

    print("--------------------------------------------------------");
    List<User> teste = [];

    // result.data["users"].forEach(user) {
    //   teste.add(User(email: user["email"], name: user["name"], id: user["id"]));
    // };

    for (int index = 0; index < result.data["users"].length; index++) {
      teste.add(User(
          email: result.data["users"][index]["email"],
          name: result.data["users"][index]["name"],
          id: result.data["users"][index]["id"]));
    }

    print(teste);

    return teste;
  }
}
