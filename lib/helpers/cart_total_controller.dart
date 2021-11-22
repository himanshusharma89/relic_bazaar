import 'package:get/get.dart';

class CartTotalController extends GetxController{
  RxInt cartTotal = 0.obs;

  updateCartTotal(int newValue ){
    cartTotal += newValue;
  }
}