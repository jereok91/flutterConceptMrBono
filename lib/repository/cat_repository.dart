import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:test_flutter_demo/domain/entities/cat_entities.dart';
import 'package:test_flutter_demo/infrastructure/model/cat_model.dart';

class CatRepository {
  final Dio _catApiClient = Dio();

  Future<List<CatEntity>> getCats() async {
    try {
      final response =
          await _catApiClient.get('https://api.thecatapi.com/v1/breeds');
      
      
      // final List<CatEntity> cats = castsModel.map((e) => CatModel.fromJson(e).toEntity()).toList();
      final List<CatEntity> cats = [];
      for (var element in response.data) {
        final mediTemp = CatModel.fromJson(element).toEntity();
        cats.add(mediTemp);
      }
      return cats;
    } catch (e) {
      throw Exception(e);
    }
  }
}
