class Post {
  final int id;
  final double price, km, time;
  final String namePost, imageFlag, street;

  Post(
      {this.id,
      this.price,
      this.km,
      this.namePost,
      this.imageFlag,
      this.time,
      this.street});
}

List<Post> post = [
  Post(
    id: 1,
    price: 2.00,
    km: 1,
    namePost: "Nome do posto 01",
    street: "Nome da rua 01, 41, bairro, Araripina-PE",
    imageFlag: "assets/images/ipiranga.png",
    time: 2,
  ),
  Post(
    id: 2,
    price: 3.00,
    km: 1.5,
    namePost: "Nome do posto 02",
    street: "Nome da rua 02, 41, bairro, Araripina-PE",
    imageFlag: "assets/images/petrobras.png",
    time: 3,
  ),
  Post(
    id: 3,
    price: 6.00,
    km: 5,
    namePost: "Nome do posto 03",
    street: "Nome da rua 03, 41, bairro, Araripina-PE",
    imageFlag: "assets/images/ipiranga.png",
    time: 8,
  ),
  Post(
    id: 4,
    price: 9.00,
    km: 1.8,
    namePost: "Nome do posto 04",
    street: "Nome da rua 04, 41, bairro, Araripina-PE",
    imageFlag: "assets/images/petrobras.png",
    time: 7,
  ),
];
