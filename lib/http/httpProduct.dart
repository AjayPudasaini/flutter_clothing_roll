import 'dart:convert';
import 'package:clothing_roll/constants/constants.dart';
import 'package:clothing_roll/model/productModel.dart';
import 'package:clothing_roll/response/product_response.dart';
import 'package:http/http.dart';
import 'package:logger/logger.dart';

class HttpProduct {
  var log = Logger();

  Future<List<Product>> getProducts() async{
    try {
      final response = await get(Uri.parse(GET_ALL_PRODUCTS));
      print(GET_ALL_PRODUCTS);
      log.i(response.body);
      log.i(response.statusCode);
      if (response.statusCode==200) {
        var allProducts = ResponseProduct.fromJson(jsonDecode(response.body));
        log.i(allProducts.data);
        return allProducts.data;
      }
      else{
        throw Exception("Failed to load students");
      }
      
    } catch (e) {
      log.i("connecyion error");
      Future.error("errrrrrrrooooorrr $e");
    }
    return throw Exception("Failed to connect server");

    
  }
 

  
}
