// filters_page.dart
import 'package:flutter/material.dart';
import 'package:hucha/components/top_bar.dart';

class FiltersPage extends StatelessWidget {
  const FiltersPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            // Top Bar
            const TopBar(texto: 'Historial',),

            // Search Bar
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Buscar',
                  prefixIcon: const Icon(Icons.search),
                  filled: true,
                  fillColor: Colors.grey[100],
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
            ),

            // Filter Buttons
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _buildFilterButton(Icons.sort, 'Ordenar'),
                  _buildFilterButton(Icons.tune, 'Filtrar'),
                  _buildFilterButton(Icons.attach_money_rounded, 'Tipo'),
                ],
              ),
            ),

            // Hotel List
            Expanded(
              child: ListView(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                children: [
                  _buildHotelCard(
                    '100',
                    'Ingreso',
                    'images/cloud.png',
                    'Ene 30',
                    'USD',
                    'Internet',
                  ),
                  const SizedBox(height: 16),
                  _buildHotelCard(
                    '20',
                    'Gasto',
                    'images/cloud.png',
                    'Ene 30',
                    'CUP',
                    'Hogar',
                  ),
                  const SizedBox(height: 16),
                  _buildHotelCard(
                    '15',
                    'Gasto',
                    'images/cloud.png',
                    'Ene 1',
                    'CUP',
                    'Comida',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildFilterButton(IconData icon, String label) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey[300]!),
        borderRadius: BorderRadius.circular(24),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, size: 20),
          const SizedBox(width: 8),
          Text(label),
        ],
      ),
    );
  }

  Widget _buildHotelCard(String amount, String status, String imageUrl,
      String date, String currency, String category) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey[200]!),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.asset(
                    imageUrl,
                    width: 100,
                    height: 100,
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Text(
                                amount,
                                style: const TextStyle(
                                  fontSize: 23,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Icon(
                                status == 'Ingreso'
                                    ? Icons.arrow_upward_rounded
                                    : Icons.arrow_downward_rounded,
                                color: status == 'Ingreso'
                                    ? Colors.green[800]
                                    : Colors.deepOrange[400],
                              ),
                            ],
                          ),
                          Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 8,
                              vertical: 4,
                            ),
                            decoration: BoxDecoration(
                              color: status == 'Ingreso'
                                  ? Colors.green[700]
                                  : Colors.deepOrange[300],
                              borderRadius: BorderRadius.circular(7),
                            ),
                            child: Text(
                              status,
                              style: TextStyle(
                                color: status == 'Ingreso'
                                    ? Colors.white
                                    : Colors.white,
                                fontSize: 12,
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 8),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Row(
                            children: [
                              const Icon(Icons.currency_exchange_rounded,
                                  size: 16),
                              const SizedBox(width: 4),
                              Text(currency),
                            ],
                          ),
                          const SizedBox(
                              width: 16), // Espaciado entre elementos

                          Expanded(
                            child: Row(
                              children: [
                                const Icon(Icons.category_rounded, size: 16),
                                const SizedBox(width: 4),
                                Expanded(
                                    child: Text(category,
                                        overflow: TextOverflow.ellipsis)),
                              ],
                            ),
                          ),
                        ],
                      ),

                      const SizedBox(height: 8), // Espaciado entre elementos

                      Row(
                        children: [
                          const Icon(Icons.calendar_today, size: 16),
                          const SizedBox(width: 4),
                          Text(date),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),

          // const Divider(height: 1),

          Padding(
            padding: const EdgeInsets.only(bottom: 12),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: SizedBox(
                      height: 40,
                      width: 100,
                      child: OutlinedButton(
                        onPressed: () {},
                        style: OutlinedButton.styleFrom(
                          foregroundColor: Colors.grey,
                          side: BorderSide(
                            color: Colors.grey[300]!,
                            width: 0.5,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          // padding: const EdgeInsets.symmetric(vertical: 22),
                        ),
                        child: const Text(
                          'Mostrar detalles',
                          style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w600,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 12),
                  SizedBox(
                    height: 40,
                    child: OutlinedButton(
                      onPressed: () {},
                      style: OutlinedButton.styleFrom(
                        foregroundColor: Colors.grey,
                        side: BorderSide(
                          color: Colors.grey[300]!,
                          width: 0.5,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        padding: const EdgeInsets.symmetric(horizontal: 22),
                      ),
                      child: Icon(Icons.more_vert_rounded),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
