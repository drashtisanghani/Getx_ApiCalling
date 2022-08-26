import 'package:get/get.dart';
import 'package:getx_demo/controller/beer_api_provider.dart';
import 'package:getx_demo/model/beer_api_model.dart';

//---------------------------------------------------Beer Getx Controller-------------------------------------------------------------------//
class BeerController extends GetxController {
  var beerList = <BeerModel>[].obs;

  @override
  void onInit() {
    //call the function-------//
    beerApiCall();
    super.onInit();
  }

//--------------------------------------------------------------------Function---------------------------------------------------------//
  Future<void> beerApiCall() async {
    var beers = await Beer.beerApiCall();
    if (beers != null) {
      beerList.value = beers;
    }
  }
}
