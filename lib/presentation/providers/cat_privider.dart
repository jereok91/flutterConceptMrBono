import 'package:flutter/material.dart';
import 'package:test_flutter_demo/domain/entities/cat_entities.dart';
import 'package:test_flutter_demo/repository/cat_repository.dart';

class CatProvider extends ChangeNotifier {
  final CatRepository _catRepository = CatRepository();
  bool isFrist = true;

  List<CatEntity> _cats = [];
  List<CatEntity> get cats => _cats;

  Future<void> fetchCats() async {
    if (isFrist) {
      _cats = await _catRepository.getCats();
      notifyListeners();
      print("fetchCats:");
    }
    isFrist = false;
  }
}
