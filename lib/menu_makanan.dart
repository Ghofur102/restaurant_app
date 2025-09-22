import 'package:flutter/material.dart';
import 'package:restaurant_app/data/pesanan.dart';
import 'package:restaurant_app/widgets/list_menu.dart';

void main() {
  runApp(const MenuMakanan());
}

class MenuMakanan extends StatelessWidget {
  const MenuMakanan({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Menu Makanan',
      debugShowCheckedModeBanner: false,
      home: MenuMakananPage(),
    );
  }
}

class MenuMakananPage extends StatefulWidget {
  const MenuMakananPage({super.key});
  @override
  State<MenuMakananPage> createState() => _MenuMakananPageState();
}

class _MenuMakananPageState extends State<MenuMakananPage> {
  final List<Pesanan> items = [
    Pesanan(
      nama: 'Makanan 1',
      harga: 5000,
    ),
    Pesanan(
      nama: 'Makanan 2',
      harga: 5000,
    ),
    Pesanan(
      nama: 'Makanan 3',
      harga: 5000,
    ),
    Pesanan(
      nama: 'Makanan 4',
      harga: 5000,
    ),
    Pesanan(
      nama: 'Makanan 5',
      harga: 5000,
    ),
    Pesanan(
      nama: 'Makanan 6',
      harga: 5000,
    ),
    Pesanan(
      nama: 'Makanan 7',
      harga: 5000,
    ),
  ];

  void _incrementalPesanan(int index) {
    setState(() {
      items[index].jumlah++;
    });
  }

  void _decrementPesanan(int index) {
    setState(() {
      items[index].jumlah--;
    });
  }

  void _reset() {
    setState(() {
      for (var item in items) {
        item.jumlah = 0;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Menu Makanan"),
      ),
      body: Container(
        margin: EdgeInsets.all(8),
        child: ListView.builder(
          padding: EdgeInsets.all(8),
          itemCount: items.length,
          itemBuilder: (context, index) {
            final item = items[index];
            return ListMenu(
                item: item,
                onIncrement: () => _incrementalPesanan(index),
                onDecrement: () => _decrementPesanan(index)
            );
          },        
        ),
      ),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // Tombol Transaction
            Expanded(
              child: ElevatedButton(
                onPressed: () {
                  
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  padding: const EdgeInsets.symmetric(vertical: 12),
                ),
                child: const Text('Transaction'),
              ),
            ),
            const SizedBox(width: 20),
            Expanded(
              child: ElevatedButton(
                onPressed: () => _reset(),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  padding: const EdgeInsets.symmetric(vertical: 12),
                ),
                child: const Text("Reset"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
