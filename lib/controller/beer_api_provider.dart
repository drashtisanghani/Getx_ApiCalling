// ignore_for_file: file_names

import 'package:http/http.dart' as http;
import 'package:getx_demo/model/beer_api_model.dart';

class Beer {
  static Future<List<BeerModel>?> beerApiCall() async {
    //--------------------------------------------------------Beer Url-----------------------------------------------------------------//
    var response = await http.get(
      Uri.parse("https://api.punkapi.com/v2/beers?page=1"),
    );
    //------------------------response-----------------//
    if (response.statusCode == 200) {
      var beerlist = response.body;
      return userResponse(beerlist);
    } else {}
    return null;
  }
}
