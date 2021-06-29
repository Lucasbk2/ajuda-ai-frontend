const String testeReadAllUSers = r'''
      query readUsers() {
        viewer {

          users() {
            users() {
              name
              email
            }
          }

        }
      }
    ''';

const String readAllUsers = r'''
query readUsers(){
   viewer {
      users() {
        name
        email
      }
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
