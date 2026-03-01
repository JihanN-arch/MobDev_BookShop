import 'package:book_shop/widget/bottom_navbar.dart';
import 'package:book_shop/widget/productShopCard.dart';
import 'package:flutter/material.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  bool isLoading = true;
  List<Map<String, dynamic>> products = [];

  @override
  void initState() {
    super.initState();
    fetchProducts();
  }

  Future<void> fetchProducts() async {
    await Future.delayed(const Duration(seconds: 2));

    setState(() {
      products = List.generate(
        6,
        (index) => {"title": "Buku $index", "price": 100000, "qty": 2},
      );
      isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      /// Create bttn
      floatingActionButton: Container(
        width: 50,
        height: 50,
        decoration: const BoxDecoration(
          color: Colors.black,
          shape: BoxShape.circle,
        ),
        child: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.add, color: Colors.white, size: 28),
        ),
      ),

      bottomNavigationBar: const BottomNavbar(currentIndex: 1),

      body: SafeArea(
        child: LayoutBuilder(
          builder: (context, constraints) {
            final screenHeight = constraints.maxHeight;

            return Stack(
              children: [
                Container(
                  width: double.infinity,
                  height: double.infinity,
                  color: Colors.black,
                ),

                // JN's book store
                Center(
                  child: Column(
                    children: [
                      const SizedBox(height: 30),
                      const Icon(
                        Icons.storefront_outlined,
                        size: 56,
                        color: Colors.white,
                      ),
                      const SizedBox(height: 12),
                      const Text(
                        "JN's Book Store",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(height: 8),
                      const Text(
                        "Manage your books here.",
                        style: TextStyle(fontSize: 13, color: Colors.white70),
                      ),
                    ],
                  ),
                ),

                // GridView produck store
                Positioned(
                  top: screenHeight * 0.23,
                  left: 0,
                  right: 0,
                  bottom: 0,
                  child: Container(
                    padding: const EdgeInsets.only(top: 30),
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.vertical(
                        top: Radius.circular(40),
                      ),
                    ),
                    child: Column(
                      children: [
                        const Text(
                          "Your Products",
                          style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 16),

                        Expanded(
                          child: isLoading
                              ? const Center(child: CircularProgressIndicator())
                              : products.isEmpty
                              ? const Center(child: Text("No products yet"))
                              : Padding(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 16,
                                  ),
                                  child: GridView.builder(
                                    itemCount: products.length,
                                    gridDelegate:
                                        const SliverGridDelegateWithFixedCrossAxisCount(
                                          crossAxisCount: 2,
                                          crossAxisSpacing: 12,
                                          mainAxisSpacing: 12,
                                          childAspectRatio: 0.68,
                                        ),
                                    itemBuilder: (_, index) {
                                      final product = products[index];
                                      return Productshopcard(
                                        product: product,
                                        onDelete: () {
                                          setState(() {
                                            products.removeAt(index);
                                          });
                                        },
                                      );
                                    },
                                  ),
                                ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
