import 'package:flutter/material.dart';
// ignore: unused_import
import './detail.produk.dart';

// ignore: camel_case_types
class produklist extends StatelessWidget {
  const produklist({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appbar
      appBar: AppBar(title: const Text("DAFTAR ALBUM")),
      // body untuk content
      // menampilkan list
      body: ListView(
        shrinkWrap: true,
        // padding
        padding: const EdgeInsets.fromLTRB(2.0, 10.0, 2.0, 10.0),
        // anggota dari list berupa widget children
        children: <Widget>[
          // GestireDetector untuk menangani gesture pengguna
          GestureDetector(
            // listener berupa kulik 1x
            onTap: () {
              // navigator.push untuk berpindah halaman
              Navigator.of(context).push(MaterialPageRoute(
                // pemanggilan class detailproduk beserta pengiriman detail produk
                builder: (BuildContext context) => const DetailProduk(
                  name: "The New Kids",
                  description:
                      "The New Kids adalah album kompilasi pertama dari grup vokal pria asal Korea Selatan iKON, dirilis oleh YG Entertainment pada tanggal 7 Januari 2019.",
                  price: 600000,
                  image: "album1.jpg",
                  star: 5,
                ),
              ));
            },
            // memanggil class ProdukBox
            child: ProductBox(
              // berisi parameter yang diperlukan di class ProdukBox
              name: "The New Kids",
              description: "Album IKON The New Kids ",
              price: 600000,
              image: "album1.jpg",
              star: 5,
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (BuildContext context) => const DetailProduk(
                      name: "Continue",
                      description:
                          "Album iKON/iKON - New Kids Continue ; Kondisi: Baru ; Berat Satuan: 700 g ; Kategori: CD & DVD",
                      price: 500000,
                      image: "album2.jpg",
                      star: 4),
                ),
              );
            },
            child: ProductBox(
                name: "Continue",
                description: " Album IKON Continue",
                price: 500000,
                image: "album2.jpg",
                star: 4),
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (BuildContext context) => const DetailProduk(
                      name: "I DECIDE",
                      description:
                          "I Decide (stylized as i DECIDE) is the third extended play by South Korean boy band iKON",
                      price: 700000,
                      image: "album3.jpg",
                      star: 5),
                ),
              );
            },
            child: ProductBox(
                name: "I DECIDE",
                description: "Album IKON I DECIDE",
                price: 700000,
                image: "album3.jpg",
                star: 3),
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (BuildContext context) => const DetailProduk(
                      name: "RETURN",
                      description:
                          "Return is the second studio album by South Korean male group iKON",
                      price: 500000,
                      image: "album4.jpg",
                      star: 5),
                ),
              );
            },
            child: ProductBox(
                name: "RETURN",
                description: "Album IKON RETURN",
                price: 500000,
                image: "album4.jpg",
                star: 5),
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (BuildContext context) => const DetailProduk(
                      name: "KONBAT",
                      description:
                          "Official Lightstick iKON Konbat kpop concert",
                      price: 700000,
                      image: "album5.jpg",
                      star: 2),
                ),
              );
            },
            child: ProductBox(
                name: "KONBAT",
                description: "Lighstick IKON",
                price: 700000,
                image: "album5.jpg",
                star: 5),
          ),
        ],
      ),
    );
  }
}

// menggunkan stateleswidget
class ProductBox extends StatelessWidget {
  // deklarasi variable yang diterima dari Productbox
  ProductBox(
      {required this.name,
      required this.description,
      required this.price,
      required this.image,
      required this.star});
  final String name;
  final String description;
  final int price;
  final String image;
  final int star;
  final children = <Widget>[];
  // menampung variabel yang di terima untuk dapat digunakan pada class ini
  @override
  Widget build(BuildContext context) {
    // menggunkan widget container
    return Container(
      // padding
      padding: const EdgeInsets.all(2),
      // height
      // menggunakan widget card
      child: Card(
        // membuat tampilan secara horisontal atara image dan deskripsi
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          // children diunakan untuk menampung banyak widget
          children: <Widget>[
            Image.asset(
              "assets/appimages/$image",
              width: 150,
            ),
            Expanded(
                // child digunakan untuk menampung satu widget
                child: Container(
              padding: const EdgeInsets.all(5),
              // membuat tampilan secara vertical
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                // ini isi tampilan vertical tersebut
                children: <Widget>[
                  // menampilkan variabel dengan widget text
                  Text(name,
                      style: const TextStyle(fontWeight: FontWeight.bold)),
                  Text(description),
                  Text(
                    "Price: $price",
                    style: const TextStyle(color: Colors.red),
                  ),
                  Row(
                    children: <Widget>[
                      // menampilkan widget icon dibungkus dengan row
                      Row(
                        children: const <Widget>[
                          Icon(
                            Icons.star,
                            size: 10,
                            color: Colors.deepOrange,
                          ),
                          Icon(
                            Icons.star,
                            size: 10,
                            color: Colors.deepOrange,
                          ),
                          Icon(
                            Icons.star,
                            size: 10,
                            color: Colors.deepOrange,
                          ),
                          Icon(
                            Icons.star,
                            size: 10,
                            color: Colors.orange,
                          ),
                        ],
                      )
                    ],
                  )
                ],
              ),
            ))
          ],
        ),
      ),
    );
  }
}
