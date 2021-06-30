import 'package:ajudaai/app/services/IUserService.dart';
import 'package:ajudaai/app/services/graphql_operation/CustomGraphqlClient.dart';
import 'package:ajudaai/app/services/graphql_operation/queries/ReadUsers.dart';
import 'package:ajudaai/app/services/graphql_operation/mutations/InsertUserMutation.dart';
import 'package:ajudaai/app/shared/models/User.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:shared_preferences/shared_preferences.dart';

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

  Future<bool> doLogin(String login, String pass) async {
    final QueryResult result = await _customGraphqlClient.searchQuery(strDoLogin, variables: {
      "login": login,
      "pass": pass
    });
    print(result);
    SharedPreferences prefs = await SharedPreferences.getInstance();
    try {
      prefs.setString("nome", result.data["userLogin"]["name"].toString() );
      prefs.setString("numero", result.data["userLogin"]["number"].toString() );
      prefs.setString("email", result.data["userLogin"]["email"].toString() );
      prefs.setString("senha", result.data["userLogin"]["password"].toString() );
      return Future.value(true);
    } catch (e) {
      print(e);
      return Future.value(false);
    }
    
  }

  Future<bool> doRegister(User user) async {
    return Future.value(false);
  }

  Future<bool> verifyLogin() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await Future.delayed(const Duration(seconds: 2), () => "2");
    bool allEmpty = prefs.getString("email") == null && prefs.getString("senha") == null && prefs.getString("nome") == null && prefs.getString("numero") == null;
    print(allEmpty);
    return Future.value(!allEmpty);
  }

}
