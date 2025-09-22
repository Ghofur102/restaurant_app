import 'package:flutter/material.dart';
import 'package:restaurant_app/data/pesanan.dart';

class ListMenu extends StatelessWidget {
  final Pesanan item;
  final VoidCallback onIncrement;
  final VoidCallback onDecrement;

  const ListMenu({super.key, required this.item, required this.onIncrement, required this.onDecrement});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      //onTap: onTap,
      child: Container(
          padding: const EdgeInsets.all(5),
          margin: const EdgeInsets.only(bottom: 10),
          child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 16,
                    backgroundColor: Color(0xFFF0F0F0),
                    child: Text(item.jumlah.toString(),
                        style: TextStyle(
                          color: Colors.black,
                        )),
                  ),
                  const SizedBox(width: 8),
                  Text(
                    item.nama,
                    style: TextStyle(fontSize: 16),
                  ),
                  const SizedBox(width: 8),
                  Text(
                    "Rp.${item.harga}",
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                  const Spacer(),
                  Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey.shade300),
                        borderRadius: BorderRadius.circular(20)),
                    child: Row(
                      children: [
                        SizedBox(
                          height: 32,
                          width: 32,
                          child: IconButton(
                            onPressed: onDecrement,
                            icon: const Icon(Icons.remove, size: 18),
                          ),
                        ),
                        Container(
                          height: 20,
                          width: 1,
                          color: Colors.grey.shade300,
                        ),
                        SizedBox(
                          height: 32,
                          width: 32,
                          child: IconButton(
                            onPressed: onIncrement,
                            icon: const Icon(Icons.add, size: 18),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ))),
    );
  }
}
