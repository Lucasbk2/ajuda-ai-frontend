/*

mutation{
  createUser(name: "sdarg", email:"sfg"){
    id
  }
}
 */

const String strInsertUser = r'''
mutation ($name: String!, $email: String!) {
  createUser(name: $name, email: $email){
    id
  }
}
''';
