import 'package:flutter/material.dart';
import 'package:product_list/features/core/style/style.dart';
import 'package:product_list/models/product.dart';

import '../widgets/image_container.dart';

class SecondState extends StatelessWidget {
  const SecondState({
    super.key,
    required this.product,
  });

  final Product product;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(product.name),
      ),
      body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView.builder(
              itemCount: 1,
              itemBuilder: (context, index) {
                return Card(
                  elevation: 5.0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  ),
                  child: Column(
                    children: [
                      ImageContainer(myImage: product.image),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        product.name,
                        style: myStyle,
                      ),
                      Text(product.description, style: mySecondStyle),
                      SizedBox(
                        height: 50,
                      ),
                      Text(
                        product.price.toString(),
                        style: mySecondStyle,
                      ),
                    ],
                  ),
                );
              })),
    );
  }
}
/* Column(
          children: [
            ImageContainer(myImage: myImage),
            Text(
              myText,
              style: mySecondStyle,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              myPrice.toString(),
              style: myStyle,
            ),
            SizedBox(
              height: 50,
            ),
            ElevatedButton(
                style:
                    ElevatedButton.styleFrom(backgroundColor: Colors.lightBlue),
                onPressed: () {},
                child: Text(
                  'BUY',
                  style: myStyle,
                ))
          ],
        ),*/
