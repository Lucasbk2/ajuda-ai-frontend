import 'package:graphql_flutter/graphql_flutter.dart';

class CustomGraphqlClient{

  final Link _link = HttpLink( 'http://localhost:4000', );

  GraphQLClient _graphQLClient;

  GraphqlClient(){
    _graphQLClient = GraphQLClient( cache: GraphQLCache(), link: _link);
  }

  Future<QueryResult> searchQuery(String strDocument, {Map<String, dynamic> variables = null} ) async {
    
    WatchQueryOptions options = WatchQueryOptions(
      document: gql(strDocument),
      variables: variables,
      pollInterval: Duration(seconds: 4),
      fetchResults: true,
    );

    final result = await _graphQLClient.query(options);

    if (result.hasException) {
      print(result.exception);
      return null;
    }

    return result;
  }

}
