import 'package:flutter/material.dart';
import 'package:hucha/components/navbar.dart';
import 'package:hucha/pages/historial.dart';
import 'package:hucha/pages/home.dart';
import 'package:hucha/pages/ingresar_gastos.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: Colors.white,
      ),
      home: const PersonalInformationPage(),
    );
  }
}

class PersonalInformationPage extends StatefulWidget {
  const PersonalInformationPage({super.key});

  @override
  State<PersonalInformationPage> createState() =>
      _PersonalInformationPageState();
}

class _PersonalInformationPageState extends State<PersonalInformationPage> {
  int currentPage = 0;

  // Lista de páginas a mostrar en la navegación
  final List<Widget> pages = [
    HomePage(),
    FiltersPage(),
    // FiltersPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentPage],

      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.black,
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(builder: (context) => IngresarGastos()),
          );
        },
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),

      
      bottomNavigationBar: NavbarComponent(
        currentPage: currentPage,
        onItemTapped: (index) {
          setState(() {
            currentPage = index;
          });
        },
      ),
    );
  }
}
