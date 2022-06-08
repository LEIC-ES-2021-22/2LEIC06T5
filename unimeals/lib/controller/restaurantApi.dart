

import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:unimeals/model/newRestaurantsJson.dart';

class RestaurantsApi{
  static Future<List<Restaurant>> getRestaurantsLocally(BuildContext context) async{
    final assetBundle = DefaultAssetBundle.of(context);
    final data = await assetBundle.loadString('assets/json/sigarra.json');
    final body = json.decode(data);
    return body.map<Restaurant>(Restaurant.fromJson).toList();
  }

}