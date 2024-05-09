import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:tukang/page/akun.dart';
import 'package:tukang/page/homepage.dart';
import 'package:tukang/page/pesan.dart';
import 'package:tukang/page/tolong.dart';

class Navbar extends StatefulWidget {
  final int selectedItem;
  Navbar({Key? key, required this.selectedItem}) : super(key: key);

  @override
  State<Navbar> createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: ImageIcon(AssetImage('lib/images/home (1).png'), size: 24),
          label: 'Beranda',
        ),
        BottomNavigationBarItem(
          icon: ImageIcon(AssetImage('lib/images/clipboard.png'), size: 24),
          label: 'Pesanan',
        ),
        BottomNavigationBarItem(
          icon: ImageIcon(AssetImage('lib/images/help.png'), size: 24),
          label: 'Bantuan', // Text label for the item
        ),
        BottomNavigationBarItem(
          icon: ImageIcon(AssetImage('lib/images/user.png'), size: 24),
          label: 'Akun', // Text label for the item
        ),
      ],
      selectedItemColor: Colors.black, // Warna ikon saat dipilih
      unselectedItemColor: Colors.grey,
      showUnselectedLabels: true,
      currentIndex: widget.selectedItem,
      onTap: (index) {
        _changeSelectedNavBar(context, index);
      },
    );
  }

  void _changeSelectedNavBar(BuildContext context, int index) {
    switch (index) {
      case 0:
        Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (context) => HomePage()),
          (route) => false,
        );
        break;
      case 1:
        Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (context) => OrderPage()),
          (route) => false,
        );
        break;
      case 2:
        Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (context) => HelpPage()),
          (route) => false,
        );
        break;
      case 3:
        Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (context) => AccountPage()),
          (route) => false,
        );
        break;
      default:
        break;
    }
  }
}
