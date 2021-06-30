import 'package:ajudaai/app/screens/components/sidebar/CustomDrawer.dart';
import 'package:ajudaai/app/screens/user/UserController.dart';
import 'package:ajudaai/app/shared/core/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_multi_formatter/flutter_multi_formatter.dart';

final _userController = UserController();

class UserView extends StatefulWidget {
  UserView({Key key}) : super(key: key);

  @override
  _UserView createState() => _UserView();
}

class _UserView extends State<UserView> {
  bool _obscureText;
  
  _UserView(){
    _obscureText = true;
  }

  void _togglePasswordStatus() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.appBarPurple, title: Text("Perfil")),
      drawer: CustomDrawer(),
      body: Container(
        padding: EdgeInsets.only(top: 30),
        margin: EdgeInsets.all(50),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CircleAvatar(
                    radius: 25,
                    backgroundColor: AppColors.purpleButton,
                    child: Text("L", style: TextStyle(
                      fontSize: 20
                    ),),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10),
                    child: Text("@Lucas Leite"),
                  ),
                  

                ],
              ),
              Container(
                padding: EdgeInsets.all(10),
                child: TextFormField(
                  decoration: const InputDecoration(
                    labelText: 'Nome',
                    hintText: 'Nome do usuário',
                  ),
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
              ),
              Container(
                padding: EdgeInsets.all(10),
                child: TextFormField(
                  enableSuggestions: false,
                  validator: (val) =>
                      val.length < 6 ? 'senha muito curta.' : null,
                  autocorrect: false,
                  obscureText: _obscureText,
                  decoration: const InputDecoration(
                    labelText: 'Senha',
                    hintText: 'Insira a senha',
                    ),
                  ),
                ),
              Container(
                padding: EdgeInsets.all(10),
                child: TextField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: const InputDecoration(
                    labelText: 'Email',
                  ),
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
              ),
              Container(
                padding: EdgeInsets.all(10),
                child: TextFormField(
                  keyboardType: TextInputType.phone,
                  autocorrect: false,
                  inputFormatters: [MaskedInputFormatter('(##) #####-####')],
                  decoration: const InputDecoration(
                    labelText: 'número',
                  ),
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
              ),
              Container(
                padding: EdgeInsets.all(10),
                child: SizedBox(
                  width: double.infinity,
                  height: 50,
                  // height: double.infinity,
                  child: ElevatedButton(
                    child: Text("cadastrar Usuário", style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold
                    )),
                    style: ButtonStyle( backgroundColor: MaterialStateProperty.all( AppColors.purpleButton ) ),
                    onPressed: _userController.LoadAllUsers),
                )
              ),
            ]),
      ),
    );
  }
}
