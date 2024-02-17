import 'package:flutter/material.dart';
import 'package:test_flutter_demo/domain/entities/cat_entities.dart';

class CardCat extends StatelessWidget {
  final int index;
  final CatEntity cat;
  const CardCat({
    super.key,
    required this.index,
    required this.cat,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Column(
      children: [
        Text(
          cat.name,
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
        ),
        ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.network(cat.imageUrl,
                errorBuilder: (context, error, stackTrace) => Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(20),
                  ),
                  width: size.width * 0.9,
                  padding:const  EdgeInsets.symmetric(vertical: 65.0, horizontal: 0.0),
                  child: const Column(
                        children: [
                          Text('Error al cargar la imagen', style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
                          Icon(Icons.warning_rounded, size: 50, color: Colors.amberAccent),
                        ],
                      ),
                ),
                loadingBuilder: (context, child, loadingProgress) {
                  if (loadingProgress == null) return child;
                  return const Column(
                    children: [
                      CircularProgressIndicator(),
                      SizedBox(height: 10),
                      Text('Cargando...'),
                    ],
                  );
                },
                width: size.width * 0.9,
                height: 200,
                fit: BoxFit.cover)),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text('${cat.countryCcode} - ${cat.origin}'),
            Text('Integijencia:${cat.intelligence}'),
          ],
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
          child: Text('${index + 1} - ${cat.description}'),
        )
      ],
    );
  }
}
