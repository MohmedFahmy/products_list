import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:product_list/data/data.dart';
import 'package:product_list/features/home/cubit/home_cubit.dart';
import 'package:product_list/features/home/cubit/states.dart';
import 'package:product_list/features/home/view/screens/second_state.dart';
import 'package:product_list/features/home/view/widgets/product_view.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    int myIndex = 0;
    return BlocProvider(
        create: (context) => MyHomeCubit(),
        child: BlocConsumer<MyHomeCubit, HomeCubit>(listener: (context, state) {
          if (state is UpdateImage) {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => SecondState(
                         product: myProducts[myIndex],
                        )));
          }
        }, builder: (context, state) {
          MyHomeCubit myCubit = BlocProvider.of(context);
          return Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.deepPurple[200],
              centerTitle: true,
              title: Text('Products'),
            ),
            body: Material(
              child: ListView.builder(
                  itemCount: myProducts.length,
                  itemBuilder: (context, index) => ProductView(
                        onPress: () {
                          myIndex = index;
                          myCubit.changeImage(newImage: 'images/images.jpg');
                        },
                        myText: myProducts[index].name,
                        myImage: myProducts[index].image,
                        myDescription: myProducts[index].description,
                        myPrice: myProducts[index].price,
                      )),
            ),
          );
        }));
  }
}
