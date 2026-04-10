// ignore_for_file: public_member_api_docs, sort_constructors_first

class Friends {
  String image;
  String name;
  String status;
  Friends({
    required this.image,
    required this.name,
    required this.status,
  });
}


List<Friends> friendsList=[
  Friends(image: "assets/images/1.jpg" , name: "gamal", status: "Online"),
  Friends(image: "assets/images/2.jpg" , name: "ahmed", status: "Offline"),
  Friends(image: "assets/images/3.jpg" , name: "mohamed", status: "Online"),
  Friends(image: "assets/images/4.jpg" , name: "ali", status: "Offline"),
];
