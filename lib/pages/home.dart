import 'package:book_shop/widget/bottom_navbar.dart';
import 'package:book_shop/widget/top_navbar.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  void _handleSearch(String value) {
    print("Search: $value");
  }

  void _openCart() {
    showModalBottomSheet(
      context: context,
      builder: (_) {
        return const SizedBox(
          height: 400,
          child: Center(child: Text("Cart items here")),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(80),
        child: TopNavbar(onCartTap: _openCart, onSearch: _handleSearch),
      ),
      body: const Center(child: Text("Ini home page")),
      bottomNavigationBar: const BottomNavbar(currentIndex: 0),
    );
  }
}
