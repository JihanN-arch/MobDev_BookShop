import 'package:book_shop/widget/bottom_navbar.dart';
import 'package:flutter/material.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const Center(child: Text("MyShop Page")),
      bottomNavigationBar: const BottomNavbar(currentIndex: 1),
    );
  }
}
