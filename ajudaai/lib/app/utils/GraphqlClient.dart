import 'package:graphql_flutter/graphql_flutter.dart';

final HttpLink _httpLink = HttpLink(
    // 'https://api.github.com/graphql',
    "http://localhost:4001/");

// final AuthLink _authLink = AuthLink(
//   getToken: () async => 'Bearer testeToken',
// );

final Link _link = _httpLink;

final GraphQLClient graphQLClient = GraphQLClient(
  cache: GraphQLCache(),
  link: _link,
);
