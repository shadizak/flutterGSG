import 'package:flutter/material.dart';
import 'package:flutter1/models/Product.dart';
import 'package:flutter1/models/optionModel.dart';

class product_Widgets extends StatelessWidget {
  Product product;
  product_Widgets({@required this.product});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
        padding: EdgeInsets.all(15),
        margin: EdgeInsets.fromLTRB(5, 8, 5, 8),
        height: 70,
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
            Image.network('${product.icon}'),
            SizedBox(width: 25),
            Column(
              children: [
                Text('${product.name}'),
                SizedBox(height: 2),
                Text('${product.price}')
              ],
            )
          ],
        ));
  }
}
