import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:neostoreappflutter/core/models/products.dart';
import 'package:neostoreappflutter/core/constants/text_styles.dart';
import 'package:neostoreappflutter/core/constants/app_constants.dart';


class ProductListItem extends StatelessWidget {

  ProductsData product;

  ProductListItem({this.product});

  void selectedItem(BuildContext context){
    // Navigator.of(context).pushNamed(ProductDetailsScreen.routeName);
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => selectedItem(context),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        elevation: 4,

        margin: EdgeInsets.all(10),
        child: Container(
          height: rowHeight,
          child: Column(children: <Widget>[
            Row(
              children: <Widget>[
                Image.network(
                  product.productImages,
                  height: heightforImg,
                  width: widthforImg,
                  fit: BoxFit.fill,
                ),
                SizedBox(width: 10,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Text(product.name, style: titleStyle,),
                    Text(product.producer, style: textStyle,),
                    SizedBox(height: 20,),
                    Flexible (child: Text('RS. ${product.cost}', style: subHeaderStyle, ))
                  ],
                ),
              ],
            )
          ],
          ),
        ),
      ),
    );
  }
}
