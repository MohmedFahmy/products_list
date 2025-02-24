import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:product_list/features/home/cubit/states.dart';

class MyHomeCubit extends Cubit<HomeCubit> {
  MyHomeCubit() : super(HomeInitial());
  String image = 'images/images.jpg';

  changeState() {
    emit(UpdateState());
  }

  changeImage({required String newImage}) {
    image = newImage;
    emit(UpdateImage());
  }
}
