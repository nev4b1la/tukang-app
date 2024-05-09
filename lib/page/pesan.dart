import 'package:flutter/material.dart';
import 'package:tukang/widget/navbar.dart';
import 'package:tukang/widget/orang.dart';

class OrderPage extends StatefulWidget {
  const OrderPage({Key? key}) : super(key: key);

  @override
  State<OrderPage> createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage> {
  final List<datapesanan> pesanan = [
    datapesanan(
        nama: 'didit Tekhnik',
        deskripsi: '5758 tekhnik',
        image: 'lib/images/t1.png',
        waktu: '26/04/2023 06:29',
        Status: 'Menunggu Konfrimasi'),
    datapesanan(
        nama: 'Danish Jaya Teknik',
        deskripsi: 'Danish jaya teknik',
        image: '',
        waktu: '26/04/2023 06:29',
        Status: 'Menunggu Konfrimasi'),
    datapesanan(
        nama: 'Free Kuota',
        deskripsi: '',
        image: 'lib/assets/news.png',
        waktu: '26/04/2023 06:59',
        Status: 'Menunggu Konfrimasi'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pesanan dalam proses'),
        backgroundColor: Colors.white,
        actions: [
          IconButton(
            icon: Icon(
              Icons.list_alt_outlined,
              color: Colors.black,
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: ListView(
        children: pesanan.map((hasilMapPesanan) {
          return Card(
            child: Padding(
              padding: EdgeInsets.all(10),
              child: Row(
                children: [
                  Container(
                    width: 50,
                    height: 90,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          image: AssetImage(hasilMapPesanan.image),
                          fit: BoxFit.fill),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        hasilMapPesanan.nama,
                        style: TextStyle(
                            fontSize: 16,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(hasilMapPesanan.waktu),
                      Row(
                        children: [
                          Text(
                            hasilMapPesanan.deskripsi,
                            style: TextStyle(
                              color: Colors.blue,
                              fontSize: 14,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 12),
                            child: Text(
                              hasilMapPesanan.Status,
                              style:
                                  TextStyle(color: Colors.orange, fontSize: 14),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
          );
        }).toList(),
      ),
      bottomNavigationBar: Navbar(selectedItem: 1),
    );
  }
}
