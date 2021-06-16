const String readAllUsers = r'''
  query readAllUsers() {
    users {
      id
      name
      email
    }
  }
''';

const String readUserbyId = r'''
  query readUserbyId($id: Int!) {
    viewer {
      repositories(last: $id) {
        user {
          id
          name
          email
        }
      }
    }
  }
''';
