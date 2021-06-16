import 'package:ajudaai/app/services/IUserService.dart';
import 'package:ajudaai/app/services/graphql_operation/queries/ReadUsers.dart';
import 'package:ajudaai/app/shared/models/User.dart';
import 'package:ajudaai/app/utils/GraphqlClient.dart';
import 'package:graphql_flutter/graphql_flutter.dart';


class UserService implements IuserService {
  
  Future< List<User> > getAllUsers() async {
    final _options = QueryOptions( document: gql( readAllUsers ) );
    final result = await graphQLClient.query(_options);
    print(result);
    return List.empty();
  }

}
