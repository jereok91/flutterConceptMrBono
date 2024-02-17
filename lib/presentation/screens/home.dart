import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test_flutter_demo/presentation/providers/cat_privider.dart';
import 'package:test_flutter_demo/presentation/widgets/card_cat.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    // final catProvider = Provider.of<CatProvider>(context);
    final catProvider = context.watch<CatProvider>();
    catProvider.fetchCats();
    return Scaffold(
        appBar: AppBar(
          title: const Text('Catsbreeds'),
        ),
        body: ListView.builder(
          itemCount: catProvider.cats.length,
          itemBuilder: (context, index) {
            return SafeArea(
              child: CardCat(index: index, cat: catProvider.cats[index]),
            );
          },
        ));
  }
}
