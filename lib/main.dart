import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test_flutter_demo/presentation/providers/cat_privider.dart';
import 'package:test_flutter_demo/presentation/screens/home.dart';
import 'package:test_flutter_demo/repository/cat_repository.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [ChangeNotifierProvider(create: (_) => CatProvider())],
      child: const MaterialApp(
        title: 'Catsbreeds',
        debugShowCheckedModeBanner: false,
        home: Home(),
      ),
    );
  }
}
