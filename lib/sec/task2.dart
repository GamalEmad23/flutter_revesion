class Destination {
  final String name;
  final String description;
  final String image;

  Destination({required this.name, required this.description, required this.image});
}

List<Destination> destinationsData = [
  Destination(
    name: 'Paris', 
    description: 'The City of Light, known for its iconic Eiffel Tower and beautiful architecture.', 
    image: 'placeholder'
  ),
  Destination(name: 'Tokyo', description: 'A bustling metropolis mixing tech and tradition.', image: 'placeholder'),
  Destination(name: 'Cairo', description: 'Home to the ancient pyramids and rich history.', image: 'placeholder'),
  Destination(name: 'Rome', description: 'Famous for its food, history, and the Colosseum.', image: 'placeholder'),
  Destination(name: 'London', description: 'A global city with iconic landmarks like Big Ben.', image: 'placeholder'),
];
