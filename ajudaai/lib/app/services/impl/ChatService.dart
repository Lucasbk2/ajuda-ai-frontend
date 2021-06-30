import 'package:ajudaai/app/services/IChatService.dart';
import 'package:ajudaai/app/services/graphql_operation/CustomGraphqlClient.dart';
import 'package:ajudaai/app/services/graphql_operation/queries/ReadUsers.dart';
import 'package:ajudaai/app/services/graphql_operation/mutations/InsertUserMutation.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:ajudaai/app/shared/models/Message.dart';

class ChatService implements IchatService {
  CustomGraphqlClient _customGraphqlClient = CustomGraphqlClient();

  Future<List<Message>> getAllmessage() async {
    final QueryResult result =
        await _customGraphqlClient.searchQuery(readAllUsers);
    return Future.value((result.data["messages"] as List<dynamic>)
        .map((e) =>
            Message(message: e["message"], id: e["id"], chatKey: e["chatKey"]))
        .toList());
  }

  Future<int> insertMessage(Message msg) async {
    final QueryResult result = await _customGraphqlClient
        .executeMutatios(strInsertUser, variables: {
      "message": msg.message,
      "id": msg.id,
      "chatKey": msg.chatKey
    });

    print(result);
    return Future.value(1);
  }
}
