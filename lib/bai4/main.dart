import 'package:flutter/material.dart';

// Model sản phẩm để truyền dữ liệu
class Product {
  final String name;
  final String price;
  Product(this.name, this.price);
}

void main() => runApp(MaterialApp(home: HomeScreen()));

class HomeScreen extends StatelessWidget {
  final List<Product> products = [
    Product('iPhone 15 Pro', '28.000.000đ'),
    Product('MacBook M3', '45.000.000đ'),
    Product('AirPods Pro', '5.500.000đ'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Danh sách sản phẩm'),
        backgroundColor: Colors.blue,
      ),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          final p = products[index];
          return Card(
            margin: EdgeInsets.all(8),
            child: ListTile(
              title: Text(p.name, style: TextStyle(fontWeight: FontWeight.bold)),
              subtitle: Text(p.price),
              trailing: Icon(Icons.arrow_forward_ios, size: 16),
              onTap: () {
                // Điều hướng và truyền dữ liệu qua Constructor
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => DetailScreen(product: p)),
                );
              },
            ),
          );
        },
      ),
    );
  }
}

class DetailScreen extends StatelessWidget {
  final Product product;
  // Nhận dữ liệu từ HomeScreen
  DetailScreen({required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Chi tiết sản phẩm')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.shopping_bag, size: 100, color: Colors.blue),
            SizedBox(height: 20),
            Text(product.name, style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold)),
            SizedBox(height: 10),
            Text('Giá bán: ${product.price}', style: TextStyle(fontSize: 22, color: Colors.red)),
          ],
        ),
      ),
    );
  }
}