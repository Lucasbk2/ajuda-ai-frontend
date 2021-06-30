import 'package:ajudaai/app/shared/core/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';

class CreateRequest extends StatefulWidget {
  CreateRequest({Key key}) : super(key: key);

  @override
  _CreateRequest createState() => _CreateRequest();
}

class _CreateRequest extends State<CreateRequest> {
  Color currentColor = Color(0xff443a49);

  @override
  Widget build(BuildContext context) {
    return Material(
        child: Container(
          margin: EdgeInsets.fromLTRB(10, 30, 10, 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              InkWell(
                onTap: () => {Navigator.pop(context)},
                child: Text("Cancelar"),
              ),
              InkWell(
                onTap: () => {Navigator.pop(context)},
                child: Text("Salvar"),
              ),
            ],
          ),
          
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
            child: TextFormField(
              decoration: InputDecoration(
                border: UnderlineInputBorder(),
                labelText: 'Título',
              ),
            ),
          ),
          
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
            child: TextFormField(
              keyboardType: TextInputType.multiline,
              maxLines: null,
              decoration: InputDecoration(
                border: UnderlineInputBorder(),
                labelText: 'Descrição',
              ),
            ),
          ),

          Container(
            margin: EdgeInsets.all(20.0),
            child: ColorPicker(
                pickerColor: currentColor,
                onColorChanged: (_) => { print(_) },
                showLabel: true,
                pickerAreaHeightPercent: 0.8,
              ),
          ),

        ],
      ),
    ));
  }
}
