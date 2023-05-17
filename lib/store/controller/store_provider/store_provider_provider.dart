import 'package:flutter/material.dart';
import 'package:http/http.dart'as http;
import 'package:location/core/api.dart';

import '../../model/store_model.dart';
class Store_providerProvider extends ChangeNotifier {
  StoreModel storeModel=StoreModel(
      id: 0, name: '', address: '', logo: '', createdAt: DateTime(2022), updatedAt: DateTime(2022));
  Future store(int id)async{
    String url = '$baseUrl/stors';
    http.Response response = await http.get(Uri.parse(url),
    );
    var body = response.body;
    print(body);
    if(response.statusCode==200)
    {
      print(body);
      return storeModelFromJson(response.body);

    }else{
      print(body);

      print('error');
    }
    notifyListeners();
  }
}
