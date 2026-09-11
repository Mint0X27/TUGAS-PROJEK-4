import 'package:flutter/material.dart';

import '../../models/menu_model.dart';
import 'widgets/restaurant_header.dart';
import 'widgets/stats_row.dart';
import 'widgets/menu_card.dart';

class RestaurantDetailPage extends StatelessWidget {
  RestaurantDetailPage({super.key});

  final List<MenuModel> menuList = [
    MenuModel(
      name: 'Grilled Sirloin Steak',
      price: 'Rp 145.000',
      imageUrl: 'https://images.unsplash.com/photo-1544025162-d76694265947',
    ),
    MenuModel(
      name: 'Truffle Carbonara',
      price: 'Rp 98.000',
      imageUrl: 'https://images.unsplash.com/photo-1612874742237-6526221588e3',
    ),
    MenuModel(
      name: 'Grilled Salmon',
      price: 'Rp 128.000',
      imageUrl: 'https://images.unsplash.com/photo-1519708227418-c8fd9a32b7a2',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // AppBar (Poin 1)
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {},
        ),
        title: const Text(
          'La Brasserie Bistro',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
        ),
        actions: [
          IconButton(icon: const Icon(Icons.share_outlined), onPressed: () {}),
        ],
        centerTitle: true,
      ),

      // FloatingActionButton (Poin 7)
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        width: double.infinity,
        height: 50,
        child: FloatingActionButton.extended(
          onPressed: () {},
          backgroundColor: const Color(0xFF388E3C),
          icon: const Icon(Icons.calendar_today, color: Colors.white),
          label: const Text(
            'Reservasi Sekarang',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
        ),
      ),

      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Memanggil Widget Header yang terpisah
            const RestaurantHeader(),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Memanggil Widget Statistik yang terpisah (Poin 4)
                  const StatsRow(),

                  const SizedBox(height: 16),

                  // Deskripsi Restoran (Poin 5)
                  const Text(
                    'La Brasserie Bistro menghadirkan pengalaman bersantap dengan cita rasa khas Eropa dalam suasana yang hangat dan elegan. Menggunakan bahan-bahan segar pilihan dan racikan chef berpengalaman untuk setiap hidangan istimewa.',
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(color: Colors.grey, height: 1.4),
                  ),
                  const SizedBox(height: 4),
                  InkWell(
                    onTap: () {},
                    child: Row(
                      children: const [
                        Text(
                          'Selengkapnya',
                          style: TextStyle(
                            color: Colors.blue,
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Icon(
                          Icons.keyboard_arrow_down,
                          color: Colors.blue,
                          size: 16,
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 24),

                  // Section Menu Populer (Poin 6)
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Menu Populer',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Row(
                          children: const [
                            Text(
                              'Lihat Semua',
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 12,
                              ),
                            ),
                            Icon(
                              Icons.chevron_right,
                              color: Colors.grey,
                              size: 16,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),

                  // List Menu Horizontal memakai MenuCard Widget
                  SizedBox(
                    height: 190,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: menuList.length,
                      itemBuilder: (context, index) {
                        final item = menuList[index];
                        return MenuCard(
                          name: item.name,
                          price: item.price,
                          imageUrl: item.imageUrl,
                        );
                      },
                    ),
                  ),

                  const SizedBox(height: 60),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
