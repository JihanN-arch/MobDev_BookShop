import 'package:book_shop/widget/cart_page.dart';
import 'package:flutter/material.dart';

class TopNavbar extends StatelessWidget {
  final VoidCallback onCartTap;
  final ValueChanged<String> onSearch;

  const TopNavbar({super.key, required this.onCartTap, required this.onSearch});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      backgroundColor: Colors.black,
      elevation: 0,
      toolbarHeight: 80,
      titleSpacing: 16,
      shadowColor: Colors.black26,
      surfaceTintColor: Colors.transparent,
      flexibleSpace: Container(
        decoration: const BoxDecoration(
          border: Border(
            bottom: BorderSide(color: Color(0xFFEAEAEA), width: 1),
          ),
        ),
      ),

      title: Row(
        children: [
          /// SEARCH BOX
          Expanded(
            child: Container(
              height: 42,
              padding: const EdgeInsets.symmetric(horizontal: 12),
              decoration: BoxDecoration(
                color: const Color(0xFFF2F2F2),
                borderRadius: BorderRadius.circular(14),
              ),
              child: TextField(
                onChanged: onSearch,
                style: const TextStyle(fontSize: 14),
                decoration: const InputDecoration(
                  icon: Icon(Icons.search, size: 20),
                  hintText: "Search books...",
                  hintStyle: TextStyle(fontSize: 14),
                  border: InputBorder.none,
                ),
              ),
            ),
          ),

          const SizedBox(width: 12),

          /// CART
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => const CartPage()),
              );
            },
            child: Container(
              height: 42,
              width: 42,
              decoration: BoxDecoration(
                color: const Color(0xFFF2F2F2),
                borderRadius: BorderRadius.circular(12),
              ),
              child: const Icon(
                Icons.shopping_cart_outlined,
                size: 22,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
