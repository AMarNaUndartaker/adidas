import 'package:flutter/material.dart';

void main() {
  runApp(AdidasApp());
}

class AdidasApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Adidas Store',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'Roboto',
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  final List<Map<String, String>> shoes = [
    {
      'name': 'Ultraboost 22',
      'image': 'assets/ultraboost.jpg',
      'price': '\$180'
    },
    {'name': 'NMD R1', 'image': 'assets/nmd_r1.jpg', 'price': '\$140'},
  ];

  final List<Map<String, String>> jackets = [
    {
      'name': 'Adidas Windbreaker',
      'image': 'assets/windbreaker.jpg',
      'price': '\$120'
    },
    {'name': 'Adidas Hoodie', 'image': 'assets/hoodie.jpg', 'price': '\$90'},
  ];

  final List<Map<String, String>> hats = [
    {'name': 'Adidas Cap', 'image': 'assets/cap.jpg', 'price': '\$35'},
    {'name': 'Adidas Beanie', 'image': 'assets/beanie.jpg', 'price': '\$30'},
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Adidas Store',
              style: TextStyle(fontWeight: FontWeight.bold)),
          centerTitle: true,
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(50.0),
            child: Container(
              color: Colors.white,
              child: TabBar(
                indicatorColor: Colors.blue,
                labelColor: Colors.black,
                unselectedLabelColor: Colors.grey,
                tabs: [
                  Tab(icon: Icon(Icons.directions_run), text: 'Shoes'),
                  Tab(icon: Icon(Icons.checkroom), text: 'Jackets'),
                  Tab(icon: Icon(Icons.style), text: 'Hats'),
                ],
              ),
            ),
          ),
        ),
        body: TabBarView(
          children: [
            ProductGrid(products: shoes),
            ProductGrid(products: jackets),
            ProductGrid(products: hats),
          ],
        ),
      ),
    );
  }
}

class ProductGrid extends StatelessWidget {
  final List<Map<String, String>> products;
  ProductGrid({required this.products});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10.0),
      child: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          childAspectRatio: 0.8,
        ),
        itemCount: products.length,
        itemBuilder: (context, index) {
          return Card(
            elevation: 5,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: ClipRRect(
                    borderRadius:
                        BorderRadius.vertical(top: Radius.circular(15)),
                    child: Image.asset(
                      products[index]['image']!,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Text(products[index]['name']!,
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold)),
                      SizedBox(height: 5),
                      Text(products[index]['price']!,
                          style: TextStyle(fontSize: 14, color: Colors.grey)),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
