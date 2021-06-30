const String readAllUsers = r'''
query{
  
  users{
    name
    email
  }
}
''';

const String readUserbyId = r'''
query readUserByID($id: Int!) {
  viewer {
    user(id: $id){
      name
      email
    }
  }
}
''';
