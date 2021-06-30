import 'package:ajudaai/app/screens/register/Register.dart';
import 'package:flutter/material.dart';
import 'package:ajudaai/app/shared/core/app_colors.dart';

class Register extends StatefulWidget {
  Register({Key key}) : super(key: key);
  @override
  _Register createState() => _Register();
}

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => new _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold();
  }
}

class _Register extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              child: Stack(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.fromLTRB(15.0, 75.0, 0.0, 0.0),
                    child: Text('Cadastrar',
                        style: TextStyle(
                            fontSize: 60.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.purple)),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(15.0, 145.0, 0.0, 0.0),
                    child: Text(
                        "Por favor preencha as informações\n"
                        "para criar sua conta e clique em\n"
                        "Cadastrar.",
                        style: TextStyle(
                            fontSize: 20.0, fontWeight: FontWeight.normal)),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(20.0),
              child: Column(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                            color: Color.fromRGBO(143, 148, 251, .2),
                            blurRadius: 10.0,
                            offset: Offset(0, 10),
                          )
                        ]),
                    child: Column(
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.all(5.0),
                          decoration: BoxDecoration(
                            border: Border(
                                bottom: BorderSide(color: Colors.grey[100])),
                          ),
                          child: TextField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Nome de Usuário',
                              hintStyle: TextStyle(color: AppColors.label),
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(5.0),
                          decoration: BoxDecoration(
                            border: Border(
                                bottom: BorderSide(color: Colors.grey[100])),
                          ),
                          child: TextField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Email',
                              hintStyle: TextStyle(color: AppColors.label),
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(5.0),
                          decoration: BoxDecoration(
                            border: Border(
                                bottom: BorderSide(color: Colors.grey[100])),
                          ),
                          child: TextField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Senha',
                              hintStyle: TextStyle(color: AppColors.label),
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(5.0),
                          child: TextField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Telefone',
                              hintStyle: TextStyle(color: AppColors.label),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: AppColors.purpleButton,
                    ),
                    child: Center(
                      child: Text(
                        'Login',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                      ),
                    ),
                  ),
                  SizedBox(height: 5.0),
                  Container(
                    alignment: Alignment(1.0, 0.0),
                    padding: EdgeInsets.only(top: 17.0, left: 20.0),
                    child: InkWell(
                      onTap: () {},
                      child: Text(
                        'Esqueceu sua senha?',
                        style: TextStyle(
                          color: AppColors.linkLogin,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Roboto',
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'Não tem uma conta?',
                        style: TextStyle(
                          color: AppColors.purpleText,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        width: 5.0,
                      ),
                      GestureDetector(
                        onTap: () => {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Register()))
                        },
                        child: InkWell(
                            child: Text(
                          'Cadastre-se aqui',
                          style: TextStyle(
                            fontFamily: 'Roboto',
                            color: AppColors.linkLogin,
                            fontWeight: FontWeight.bold,
                            decoration: TextDecoration.none,
                          ),
                        )),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
