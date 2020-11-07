import 'package:tienda_lol/models/product.dart';

class ProductRepo {
  final Product_List = [
    Product(
      name: 'Jinx',
      photoUrl:
          'https://images.contentstack.io/v3/assets/blt5bbf09732528de36/bltf0f1af8a854a9fdc/5f586e4a5055ab4ffa329501/12-03-2018_2022_10_57_240_JINX-FRONT.png',
      price: 73.945,
    ),
    Product(
      name: 'Akali',
      photoUrl:
          'https://images.contentstack.io/v3/assets/blt5bbf09732528de36/blte9513d6fd6a835d0/5f5942f7ede171090f242f71/09-09-2019_2017_43_03_388_KDA_promo_AkaliUL_01_1000x1000.png',
      price: 82.720,
    ),
    Product(
      name: 'Jayce',
      photoUrl:
          'https://vignette.wikia.nocookie.net/leagueoflegends/images/0/07/Jayce_Render.png/revision/latest?cb=20200330154607',
      price: 65.390,
    ),
    Product(
      name: 'Vi',
      photoUrl:
          'https://vignette.wikia.nocookie.net/leagueoflegends/images/2/2b/Vi_Render.png/revision/latest?cb=20200503222629',
      price: 93.570,
    ),
    Product(
      name: 'Morgana',
      photoUrl:
          'https://static.wikia.nocookie.net/leagueoflegendsoficial/images/3/39/Morgana_17.png/revision/latest/top-crop/width/300/height/300?cb=20190910210412&path-prefix=es',
      price: 79.333,
    ),
    Product(
      name: 'Pyke',
      photoUrl:
          'https://static.wikia.nocookie.net/leagueoflegendsoficial/images/b/b8/Pyke_loading_screen_4.png/revision/latest/top-crop/width/300/height/300?cb=20180516004648&path-prefix=es',
      price: 65.560,
    ),
  ];

  List<Product> getAll() {
    return Product_List;
  }
}
