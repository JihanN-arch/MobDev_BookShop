import 'package:book_shop/widget/bottom_navbar.dart';
import 'package:flutter/material.dart';

class BoutMePage extends StatelessWidget {
  const BoutMePage({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Positioned(
            top: -screenWidth * 0.25,
            left: -screenWidth * 0.2,
            right: -screenWidth * 0.2,
            child: Container(
              width: screenWidth * 1.5,
              height: screenWidth * 1.2,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(screenWidth * 0.35),
              ),
            ),
          ),

          Positioned.fill(
            child: Column(
              children: [
                const SizedBox(height: 120),

                //pp
                Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.white, width: 4),
                  ),
                  child: const CircleAvatar(
                    radius: 70,
                    backgroundImage: AssetImage('assets/images/profile.jpeg'),
                  ),
                ),

                const SizedBox(height: 16),

                //nme
                const Text(
                  "Jihan Nabiilah Permata Sukma",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),

                const SizedBox(height: 30),

                /// desk
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: Container(
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.black, width: 2),
                      borderRadius: BorderRadius.circular(12),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.1),
                          blurRadius: 8,
                          offset: const Offset(0, 4),
                        ),
                      ],
                    ),
                    child: const Text(
                      "Hallo, panggil saya JN :D\n"
                      "Mahasiswa tingkat pertama IK yang sangat tertarik dengan software engineering.\n"
                      "Masih belajar biar jdi full-stack :)\n"
                      "Suka buat projek dan kolab dgn orang lain.",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 14),
                    ),
                  ),
                ),
              ],
            ),
          ),

          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Center(
              child: Image.asset(
                'assets/images/kucingItemHi.jpeg',
                width: 240,
                fit: BoxFit.contain,
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: const BottomNavbar(currentIndex: 2),
    );
  }
}
