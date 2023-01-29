import 'package:get/get.dart';

import '../data/repository/popular_product_repo.dart';

class PopularProductControler extends GetxController{
  final PopularProductRepo popularProductRepo;

  PopularProductControler({required this.popularProductRepo});
  List<dynamic> _popularProductList=[];
  List<dynamic> get popularProductList=> _popularProductList;
  
  Future<void> getPopularProductList()async {
    Response response=await popularProductRepo.getPopularProductList();
    if(response.statusCode==200){
      _popularProductList=[];
      //_popularProductList.addAll(iterable)
      update();
    }else{

    }
  }
}