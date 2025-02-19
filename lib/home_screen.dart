import 'package:flutter/material.dart';
import 'cart_screen.dart';
import 'favorite_screen.dart';
import 'profile_screen.dart';
import 'search_screen.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  final Map<int, Map<String, dynamic>> _navigationMap = {
    0: {
      "title": const Text("Home"),
      "screen": SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Search...",
                  prefixIcon: const Icon(Icons.search),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide.none,
                  ),
                  filled: true,
                  fillColor: Colors.white,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: const [
                  SizedBox(width: 10),
                  Text("Men",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                  SizedBox(width: 10),
                  Text("Women",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                  SizedBox(width: 10),
                  Text("Kids",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(0.1),
              child: Center(
                child: Image.asset(
                  "assets/image/kawaii.png",
                  width: double.infinity,
                  height: 900,
                  fit: BoxFit.fill,
                ),
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: ListView(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                children: [
                  ListTile(
                    leading: Icon(Icons.directions_run,
                        color:
                            const Color.fromARGB(255, 0, 0, 0)), // ไอคอนรองเท้า
                    title: const Text("SHOES",
                        style: TextStyle(
                            fontSize: 18, color: Color.fromARGB(255, 0, 0, 0))),
                    trailing: const Icon(Icons.arrow_forward,
                        color: Color.fromARGB(255, 0, 0, 0)
                        ),
                        onTap:(){}
                  ),
                  
                  ListTile(
                    leading: Icon(Icons.checkroom,
                        color: const Color.fromARGB(
                            255, 0, 0, 0)), // ไอคอนเสื้อผ้า
                    title: const Text("CLOTHING",
                        style: TextStyle(
                            fontSize: 18, color: Color.fromARGB(255, 0, 0, 0))),
                    trailing: const Icon(Icons.arrow_forward,
                        color: Color.fromARGB(255, 0, 0, 0)
                        ),
                        onTap:(){}
                  ),
                  ListTile(
                    leading: Icon(Icons.watch,
                        color: const Color.fromARGB(
                            255, 0, 0, 0)), // ไอคอนเครื่องประดับ
                    title: const Text("ACCESSORIES",
                        style: TextStyle(
                            fontSize: 18, color: Color.fromARGB(255, 0, 0, 0))),
                    trailing: const Icon(Icons.arrow_forward,
                        color: Color.fromARGB(255, 0, 0, 0)
                        ),
                        onTap:(){}
                  ),
                  SizedBox(height: 10),
                ],
              ),
            ),
            // ✅ ส่วนที่หายไปถูกเพิ่มกลับมา**
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Expanded(
                          child: Container(
                            height: 250,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.black),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Center(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,  // จัดตำแหน่งในแนวตั้ง
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.percent,
                                    size: 40,
                                    color: Colors.black,
                                  ),
                                  Text(
                                    "sale",
                                    style: TextStyle(color: Colors.black,fontSize: 24),
                                ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 10),
                        Expanded(
                          child: Container(
                            height: 250,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.black),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Center(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,  // จัดตำแหน่งในแนวตั้ง
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.directions_run,
                                    size: 40,
                                    color: Colors.black,
                                  ),
                                  Text(
                                    "Sport",
                                    style: TextStyle(color: Colors.black,fontSize: 24),
                                ),
                                ],
                            ),
                          ),
                        ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Expanded(
                        child: Container(
                          height: 250,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.black),
                            borderRadius: BorderRadius.circular(10),
                          ),
                        child: Center(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,  // จัดตำแหน่งในแนวตั้ง
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.filter_frames,
                                    size: 40,
                                    color: Colors.black,
                                  ),
                                  Text(
                                    "New & Trending",
                                    style: TextStyle(color: Colors.black,fontSize: 24),
                                ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      SizedBox(width: 10),
                      Expanded(
                        child: Container(
                          height: 250,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.black),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Center(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,  // จัดตำแหน่งในแนวตั้ง
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.card_giftcard,
                                    size: 40,
                                    color: Colors.black,
                                  ),
                                  Text(
                                    "Gift Cards",
                                    style: TextStyle(color: Colors.black,fontSize: 24),
                                ),
                                ],
                              ),
                            ),
                          ),
                        ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      )
    },
    1: {"title": const Text("Cart"), "screen": CartScreen()},
    2: {"title": const Text("Favorite"), "screen": FavoritesScreen()},
    3: {"title": const Text("Profile"), "screen": ProfileScreen()},
    4: {"title": const Text("Search"), "screen": SearchScreen()},
  };

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: _navigationMap[_selectedIndex]!["title"],
        backgroundColor: Colors.white,
        elevation: 4,
      ),
      body: _navigationMap[_selectedIndex]!["screen"],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_cart), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.favorite), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.account_circle), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: ""),
        ],
      ),
    );
  }
}
