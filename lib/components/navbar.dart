import 'package:flutter/material.dart';

class NavbarComponent extends StatelessWidget {
  final int currentPage;
  final Function(int) onItemTapped;

  const NavbarComponent(
      {super.key, required this.currentPage, required this.onItemTapped});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: currentPage,
      onTap: onItemTapped,
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: "Inicio"),
        BottomNavigationBarItem(icon: Icon(Icons.store_mall_directory_sharp), label: "Historial"),
        // BottomNavigationBarItem(icon: Icon(Icons.person_outline), label: "Perfil"),
      ],
    );
  }
}
