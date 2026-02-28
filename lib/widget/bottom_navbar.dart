import 'package:flutter/material.dart';
import 'package:hugeicons/hugeicons.dart';

import 'package:book_shop/pages/home.dart';
import 'package:book_shop/pages/shop.dart';
import 'package:book_shop/pages/bout_me.dart';

class BottomNavbar extends StatefulWidget {
  final int currentIndex;

  const BottomNavbar({super.key, required this.currentIndex});

  @override
  State<BottomNavbar> createState() => _BottomNavbarState();
}

class _BottomNavbarState extends State<BottomNavbar> {
  void _onItemTapped(int index) {
    if (index == widget.currentIndex) return;

    final pages = const [HomePage(), ShopPage(), BoutMePage()];

    Navigator.pushReplacement(
      context,
      PageRouteBuilder(
        transitionDuration: Duration.zero,
        reverseTransitionDuration: Duration.zero,
        pageBuilder: (_, __, ___) => pages[index],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      decoration: const BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 8,
            offset: Offset(0, -2), // shadow ke atas
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _navItem(0, HugeIcons.strokeRoundedHome07, "Home"),
          _navItem(1, HugeIcons.strokeRoundedStore02, "MyShop"),
          _navItem(2, HugeIcons.strokeRoundedUser, "Saya"),
        ],
      ),
    );
  }

  Widget _navItem(int index, dynamic icon, String label) {
    final bool isActive = widget.currentIndex == index;

    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: () => _onItemTapped(index),
      child: SizedBox(
        width: 80,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            HugeIcon(
              icon: icon,
              size: 22,
              color: isActive ? Colors.black : Colors.grey,
            ),
            const SizedBox(height: 4),
            Text(
              label,
              style: TextStyle(
                fontSize: 12,
                fontWeight: isActive ? FontWeight.w600 : FontWeight.normal,
                color: isActive ? Colors.black : Colors.grey,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
