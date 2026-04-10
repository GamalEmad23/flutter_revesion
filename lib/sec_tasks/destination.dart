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
    image: 'assets/images/5.jpg'
  ),
  Destination(name: 'Tokyo', description: 'A bustling metropolis mixing tech and tradition.', image: 'assets/images/6.jpg'),
  Destination(name: 'Cairo', description: 'Home to the ancient pyramids and rich history.', image: 'assets/images/7.jpg'),
  Destination(name: 'Rome', description: 'Famous for its food, history, and the Colosseum.', image: 'assets/images/8.jpg'),
  Destination(name: 'London', description: 'A global city with iconic landmarks like Big Ben.', image: 'assets/images/9.jpg'),
];
