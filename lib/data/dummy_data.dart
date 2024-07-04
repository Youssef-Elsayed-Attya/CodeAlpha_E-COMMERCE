import 'package:flutter/material.dart';

import '../models/models.dart';

final List<ProductModel> availableShoes = [
  ProductModel(
    name: "NIKE",
    model: "AIR-MAX",
    price: 130,
    imgAddress: "assets/images/nike1.png",
    modelColor: const Color(0xffDE0106),
    description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin tincidunt laoreet enim, eget sodales ligula semper at. Sed id aliquet eros, nec vestibulum felis. Nunc maximus aliquet aliquam. Quisque eget sapien at velit cursus tincidunt. Duis tempor lacinia erat eget fermentum.",
  ),
  ProductModel(
    name: "NIKE",
    model: "AIR-JORDAN MID",
    price: 190,
    imgAddress: "assets/images/nike8.png",
    modelColor: const Color(0xff3F7943),
    description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin tincidunt laoreet enim, eget sodales ligula semper at. Sed id aliquet eros, nec vestibulum felis. Nunc maximus aliquet aliquam. Quisque eget sapien at velit cursus tincidunt. Duis tempor lacinia erat eget fermentum.",
  ),
  ProductModel(
    name: "NIKE",
    model: "ZOOM",
    price: 160,
    imgAddress: "assets/images/nike2.png",
    modelColor: const Color(0xffE66863),
    description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin tincidunt laoreet enim, eget sodales ligula semper at. Sed id aliquet eros, nec vestibulum felis. Nunc maximus aliquet aliquam. Quisque eget sapien at velit cursus tincidunt. Duis tempor lacinia erat eget fermentum.",
  ),
  ProductModel(
    name: "NIKE",
    model: "Air-FORCE",
    price: 110,
    imgAddress: "assets/images/nike3.png",
    modelColor: const Color(0xffD7D8DC),
    description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin tincidunt laoreet enim, eget sodales ligula semper at. Sed id aliquet eros, nec vestibulum felis. Nunc maximus aliquet aliquam. Quisque eget sapien at velit cursus tincidunt. Duis tempor lacinia erat eget fermentum.",
  ),
  ProductModel(
    name: "NIKE",
    model: "AIR-JORDAN LOW",
    price: 150,
    imgAddress: "assets/images/nike5.png",
    modelColor: const Color(0xff37376B),
    description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin tincidunt laoreet enim, eget sodales ligula semper at. Sed id aliquet eros, nec vestibulum felis. Nunc maximus aliquet aliquam. Quisque eget sapien at velit cursus tincidunt. Duis tempor lacinia erat eget fermentum.",
  ),
  ProductModel(
    name: "NIKE",
    model: "ZOOM",
    price: 115,
    imgAddress: "assets/images/nike4.png",
    modelColor: const Color(0xffE4E3E8),
    description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin tincidunt laoreet enim, eget sodales ligula semper at. Sed id aliquet eros, nec vestibulum felis. Nunc maximus aliquet aliquam. Quisque eget sapien at velit cursus tincidunt. Duis tempor lacinia erat eget fermentum.",
  ),
  ProductModel(
    name: "NIKE",
    model: "AIR-JORDAN LOW",
    price: 150,
    imgAddress: "assets/images/nike7.png",
    modelColor: const Color(0xffD68043),
    description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin tincidunt laoreet enim, eget sodales ligula semper at. Sed id aliquet eros, nec vestibulum felis. Nunc maximus aliquet aliquam. Quisque eget sapien at velit cursus tincidunt. Duis tempor lacinia erat eget fermentum.",
  ),
  ProductModel(
    name: "NIKE",
    model: "AIR-JORDAN LOW",
    price: 150,
    imgAddress: "assets/images/nike6.png",
    modelColor: const Color(0xffE2E3E5),
    description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin tincidunt laoreet enim, eget sodales ligula semper at. Sed id aliquet eros, nec vestibulum felis. Nunc maximus aliquet aliquam. Quisque eget sapien at velit cursus tincidunt. Duis tempor lacinia erat eget fermentum.",
  ),
];
final List<ProductModel> products = [
  ProductModel(
    name: "NIKE",
    model: "AIR-MAX",
    price: 130,
    imgAddress: "assets/images/nike1.png",
    modelColor: const Color(0xffDE0106),
    description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin tincidunt laoreet enim, eget sodales ligula semper at. Sed id aliquet eros, nec vestibulum felis. Nunc maximus aliquet aliquam. Quisque eget sapien at velit cursus tincidunt. Duis tempor lacinia erat eget fermentum.",
  ),
  ProductModel(
    name: "NIKE",
    model: "AIR-JORDAN MID",
    price: 190,
    imgAddress: "assets/images/nike8.png",
    modelColor: const Color(0xff3F7943),
    description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin tincidunt laoreet enim, eget sodales ligula semper at. Sed id aliquet eros, nec vestibulum felis. Nunc maximus aliquet aliquam. Quisque eget sapien at velit cursus tincidunt. Duis tempor lacinia erat eget fermentum.",
  ),
  ProductModel(
    name: "NIKE",
    model: "ZOOM",
    price: 160,
    imgAddress: "assets/images/nike2.png",
    modelColor: const Color(0xffE66863),
    description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin tincidunt laoreet enim, eget sodales ligula semper at. Sed id aliquet eros, nec vestibulum felis. Nunc maximus aliquet aliquam. Quisque eget sapien at velit cursus tincidunt. Duis tempor lacinia erat eget fermentum.",
  ),
  ProductModel(
    name: "NIKE",
    model: "Air-FORCE",
    price: 110,
    imgAddress: "assets/images/nike3.png",
    modelColor: const Color(0xffD7D8DC),
    description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin tincidunt laoreet enim, eget sodales ligula semper at. Sed id aliquet eros, nec vestibulum felis. Nunc maximus aliquet aliquam. Quisque eget sapien at velit cursus tincidunt. Duis tempor lacinia erat eget fermentum.",
  ),
  ProductModel(
    name: "NIKE",
    model: "AIR-JORDAN LOW",
    price: 150,
    imgAddress: "assets/images/nike5.png",
    modelColor: const Color(0xff37376B),
    description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin tincidunt laoreet enim, eget sodales ligula semper at. Sed id aliquet eros, nec vestibulum felis. Nunc maximus aliquet aliquam. Quisque eget sapien at velit cursus tincidunt. Duis tempor lacinia erat eget fermentum.",
  ),
  ProductModel(
    name: "NIKE",
    model: "ZOOM",
    price: 115,
    imgAddress: "assets/images/nike4.png",
    modelColor: const Color(0xffE4E3E8),
    description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin tincidunt laoreet enim, eget sodales ligula semper at. Sed id aliquet eros, nec vestibulum felis. Nunc maximus aliquet aliquam. Quisque eget sapien at velit cursus tincidunt. Duis tempor lacinia erat eget fermentum.",
  ),
  ProductModel(
    name: "NIKE",
    model: "AIR-JORDAN LOW",
    price: 150,
    imgAddress: "assets/images/nike7.png",
    modelColor: const Color(0xffD68043),
    description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin tincidunt laoreet enim, eget sodales ligula semper at. Sed id aliquet eros, nec vestibulum felis. Nunc maximus aliquet aliquam. Quisque eget sapien at velit cursus tincidunt. Duis tempor lacinia erat eget fermentum.",
  ),
  ProductModel(
    name: "NIKE",
    model: "AIR-JORDAN LOW",
    price: 150,
    imgAddress: "assets/images/nike6.png",
    modelColor: const Color(0xffE2E3E5),
    description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin tincidunt laoreet enim, eget sodales ligula semper at. Sed id aliquet eros, nec vestibulum felis. Nunc maximus aliquet aliquam. Quisque eget sapien at velit cursus tincidunt. Duis tempor lacinia erat eget fermentum.",
  ),
];

List<ProductModel> itemsOnBag = [];

final List<UserStatus> userStatus = [
  UserStatus(
    emoji: '😴',
    txt: "Away",
    selectColor: const Color(0xff121212),
    unSelectColor: const Color(0xffbfbfbf),
  ),
  UserStatus(
    emoji: '💻',
    txt: "At Work",
    selectColor: const Color(0xff05a35c),
    unSelectColor: const Color(0xffCEEBD9),
  ),
  UserStatus(
    emoji: '🎮',
    txt: "Gaming",
    selectColor: const Color(0xffFFD237),
    unSelectColor: const Color(0xffFDDFBB),
  ),
  UserStatus(
    emoji: '🤫',
    txt: "Busy",
    selectColor: const Color(0xffba3a3a),
    unSelectColor: const Color(0xffdb9797),
  ),
];

final List categories = [
  'Shoes',
  "electronics",
  "jewelery",
  "men's clothing",
  "women's clothing"
];
final List featured = [
  'New',
  'Featured',
  'Upcoming',
];

final List<double> sizes = [6, 7.5, 8, 9.5];
