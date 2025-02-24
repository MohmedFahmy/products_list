import 'package:flutter/material.dart';
import 'package:product_list/features/core/style/style.dart';

// ignore: must_be_immutable
class ProductView extends StatelessWidget {
  ProductView({
    super.key,
    required this.myText,
    required this.myImage,
    required this.myDescription,
    required this.myPrice,
    required this.onPress,
  });
  final String myText;
  final String myImage;
  final String myDescription;
  final double myPrice;
  final Function()? onPress;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(3.0),
          child: Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.deepPurple[200]!, width: 2),
              borderRadius: BorderRadius.circular(8),
            ),
            child: ListTile(
              onTap: onPress,
              leading: CircleAvatar(
                backgroundImage: AssetImage(myImage),
                radius: 40,
              ),
              title: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    myText,
                    style: myStyle,
                  ),
                  Text(
                    myDescription,
                    style: mySecondStyle,
                  ),
                ],
              ),
              trailing: Text('${myPrice} \$', style: myStyle),
            ),
          ),
        )
      ],
    );
  }
}
