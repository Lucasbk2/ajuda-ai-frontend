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

const String strDoLogin = r'''
query userLogin($login: String, $pass: String) {
  viewer {
    userLogin( login: $login, pass: $pass ){
      name
      number
      email
      password
    }
  }
}
''';
