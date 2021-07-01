import 'package:flutter/material.dart';
import 'package:flutter1/models/optionModel.dart';

class option_widget extends StatelessWidget {
  Option option;
  option_widget({@required this.option});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
        padding: EdgeInsets.all(15),
        margin: EdgeInsets.fromLTRB(5, 8, 5, 8),
        height: 55,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(5),
              topRight: Radius.circular(5),
              bottomLeft: Radius.circular(5),
              bottomRight: Radius.circular(5)),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 1,
              blurRadius: 1,
              offset: Offset(0, 1), // changes position of shadow
            ),
          ],
        ),
        child: Row(
          //crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network('${option.icon}'),
            SizedBox(width: 25),
            Text('${option.type}')
          ],
        ));
  }
}
