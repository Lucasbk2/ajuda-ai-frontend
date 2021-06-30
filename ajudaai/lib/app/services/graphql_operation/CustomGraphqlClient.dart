import 'package:graphql_flutter/graphql_flutter.dart';

class CustomGraphqlClient{

  final Link _link = HttpLink( 'http://localhost:4000', );

  GraphQLClient _graphQLClient;

  CustomGraphqlClient(){
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
    return Future.value(result);
    
  }

  Future<QueryResult> executeMutatios(String strDocument, {Map<String, dynamic> variables = null}) async{
    
    final _options = MutationOptions(
      document: gql(strDocument),
      variables: variables,
    );
    print(variables);

    final result = await _graphQLClient.mutate(_options);
    return Future.value(result);;
    
  }

}
