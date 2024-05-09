import 'package:flutter/material.dart';
import 'package:tukang/widget/navbar.dart';

class HelpPage extends StatelessWidget {
  const HelpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bantuan'),
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
      body: Container(
        child: Center(
          child: Text(
            "Tidak ada Bantuan",
            style: TextStyle(fontSize: 14),
          ),
        ),
      ),
      bottomNavigationBar: Navbar(selectedItem: 2),
    );
  }
}
