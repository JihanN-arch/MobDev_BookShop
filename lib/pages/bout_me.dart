import 'package:book_shop/widget/bottom_navbar.dart';
import 'package:flutter/material.dart';

class BoutMePage extends StatelessWidget {
  const BoutMePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const Center(child: Text("Profile Page")),
      bottomNavigationBar: const BottomNavbar(currentIndex: 2),
    );
  }
}
