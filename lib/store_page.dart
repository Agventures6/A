import 'package:flutter/material.dart';
import 'cart.dart';

class StorePage extends StatefulWidget {
  const StorePage({super.key});

  @override
  State<StorePage> createState() => _StorePageState();
}

class _StorePageState extends State<StorePage> {
  final List<Map<String, dynamic>> products = [
    {
      'name': 'Product 1',
      'price': 10,
      'image': 'assets/product1.jpg',
      'quantity': 0,
    },
    {
      'name': 'Product 2',
      'price': 20,
      'image': 'assets/product2.jpg',
      'quantity': 0,
    },
    {
      'name': 'Product 3',
      'price': 30,
      'image': 'assets/product3.jpg',
      'quantity': 0,
    },
    {
      'name': 'Product 4',
      'price': 30,
      'image': 'assets/fuji.jpg',
      'quantity': 0,
    },
    {
      'name': 'Product 5',
      'price': 30,
      'image': 'assets/pesticides.png',
      'quantity': 0,
    },
    {
      'name': 'Product 6',
      'price': 30,
      'image': 'assets/crops.jpg',
      'quantity': 0,
    },
  ];

  final List<Map<String, dynamic>> categories = [
    {'label': 'Category 1'},
    {'label': 'Category 2'},
    {'label': 'Category 3'},
  ];

  final List<Map<String, dynamic>> _cartItems = [];

  void _addToCart(Map<String, dynamic> product) {
    setState(() {
      final existingProduct = _cartItems.firstWhere(
        (item) => item['name'] == product['name'],
        orElse: () => {},
      );

      if (existingProduct.isNotEmpty) {
        existingProduct['quantity'] += 1;
      } else {
        _cartItems.add({...product});
      }
    });
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('${product['name']} added to cart!')),
    );
  }

  void _navigateToCart() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => CartPage(cartItems: _cartItems),
      ),
    );
  }

  void _increaseQuantity(int index) {
    setState(() {
      products[index]['quantity'] += 1;
    });
  }

  void _decreaseQuantity(int index) {
    setState(() {
      if (products[index]['quantity'] > 1) {
        products[index]['quantity'] -= 1;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Store'),
        centerTitle: true,
        backgroundColor: Colors.green,
        actions: [
          IconButton(
            icon: const Icon(Icons.shopping_cart),
            onPressed: _navigateToCart,
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              decoration: InputDecoration(
                hintText: 'Search',
                prefixIcon: const Icon(Icons.search),
                filled: true,
                fillColor: Colors.grey[300],
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
            const SizedBox(height: 16.0),
            // Categories Dropdown
            DropdownButtonHideUnderline(
              child: DropdownButton<String>(
                hint: const Text('Select a Category'),
                items: categories
                    .map((category) => DropdownMenuItem<String>(
                          value: category['label'],
                          child: Text(category['label']),
                        ))
                    .toList(),
                onChanged: (value) {
                  // Handle category selection here
                },
              ),
            ),
            const SizedBox(height: 16.0),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'The Fastest Delivery',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 8.0),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            foregroundColor: Colors.red,
                            backgroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                          ),
                          onPressed: () {
                            _navigateToCart();
                            // Custom function to handle fast delivery
                          },
                          child: const Text('Order now'),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 16.0),
                  Image.asset(
                    'assets/fast.png',
                    width: 80,
                    height: 80,
                    fit: BoxFit.cover,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16.0),
            Expanded(
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 16.0,
                  mainAxisSpacing: 16.0,
                ),
                itemCount: products.length,
                itemBuilder: (context, index) {
                  final product = products[index];
                  return _buildCategoryItem(
                    product['name'],
                    product['image'],
                    product['price'],
                    product['quantity'],
                    () => _addToCart(product),
                    () => _increaseQuantity(index),
                    () => _decreaseQuantity(index),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCategoryItem(
      String label,
      String imagePath,
      int price,
      int quantity,
      VoidCallback onAddToCart,
      VoidCallback onIncreaseQuantity,
      VoidCallback onDecreaseQuantity) {
    return GestureDetector(
      onTap: onAddToCart,
      child: Column(
        children: [
          Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(imagePath),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.circular(10.0),
              border: Border.all(color: Colors.grey),
            ),
          ),
          const SizedBox(height: 8.0),
          Text(label),
          Text('₹$price'),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                icon: const Icon(Icons.remove_circle_outline),
                onPressed: onDecreaseQuantity,
              ),
              const SizedBox(width: 8.0),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 12.0, vertical: 6.0),
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Text(
                  '$quantity',
                  style: const TextStyle(
                      fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(width: 8.0),
              IconButton(
                icon: const Icon(Icons.add_circle_outline),
                onPressed: onIncreaseQuantity,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
