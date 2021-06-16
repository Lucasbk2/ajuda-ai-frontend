

import 'package:graphql_flutter/graphql_flutter.dart';

final HttpLink _httpLink = HttpLink(
  'https://api.github.com/graphql',
);

final AuthLink _authLink = AuthLink(
  getToken: () async => 'Bearer testeToken',
);

final Link _link = _authLink.concat(_httpLink);

final GraphQLClient graphQLClient = GraphQLClient(
  cache: GraphQLCache(),
  link: _link,
);
