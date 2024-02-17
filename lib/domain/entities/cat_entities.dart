class CatEntity {
  final String id;
  final String name;
  final int intelligence;
  final String imageUrl;
  final String origin;
  final String countryCcode;
  final String description;

  CatEntity({
    required this.id,
    required this.name,
    required this.intelligence,
    required this.imageUrl,
    required this.origin,
    required this.countryCcode,
    required this.description,
  });

  @override
  String toString() {
    // return super.toString();
    return '{id: $id, name: $name, intelligence: $intelligence, imageUrl: $imageUrl, origin: $origin, countryCcode: $countryCcode, description: $description}';
  }
}
