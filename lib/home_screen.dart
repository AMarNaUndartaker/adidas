import 'package:flutter/material.dart'; // อิมพอร์ต Flutter Material

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  // ฟังก์ชันสำหรับการเลือกเมนู
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SHOP'),
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        elevation: 4,
      ),
      body: SingleChildScrollView( // ใช้ SingleChildScrollView เพื่อให้หน้าจอเลื่อน
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
              padding: EdgeInsets.all(5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: const [
                  SizedBox(width:10),
                  Text(
                    "Men",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Color.fromARGB(255, 0, 0, 0)),
                  ),
                  SizedBox(width:10),
                  Text(
                    "Women",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Color.fromARGB(255, 0, 0, 0)),
                  ),
                  SizedBox(width:10),
                  Text(
                    "Kids",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Color.fromARGB(255, 0, 0, 0)),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Center(
                child: Image.asset(
                  "assets/Image/kawaii.png", 
                  width: 800,
                  height: 500,
                  fit: BoxFit.cover, // ปรับให้รูปเต็มพื้นที่
                ),
              ),
            ),
            // List ที่สามารถเลื่อนได้
            ListView(
              shrinkWrap: true, // ให้ ListView ย่อขนาดได้
              physics: NeverScrollableScrollPhysics(), // ปิดการเลื่อนใน ListView
              children: [
                ListTile(
                  leading: Icon(Icons.directions_run, color: const Color.fromARGB(255, 0, 0, 0)), // ไอคอนรองเท้า
                  title: const Text("SHOES", style: TextStyle(fontSize: 18, color: Color.fromARGB(255, 0, 0, 0))),
                  trailing: const Icon(Icons.arrow_forward, color: Color.fromARGB(255, 0, 0, 0)),
                  onTap: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text("You tapped on SHOES")),
                    );
                  },
                ),
                SizedBox(height: 10),
                ListTile(
                  leading: Icon(Icons.checkroom, color: const Color.fromARGB(255, 0, 0, 0)), // ไอคอนเสื้อผ้า
                  title: const Text("CLOTHING", style: TextStyle(fontSize: 18, color: Color.fromARGB(255, 0, 0, 0))),
                  trailing: const Icon(Icons.arrow_forward, color: Color.fromARGB(255, 0, 0, 0)),
                  onTap: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text("You tapped on CLOTHING")),
                    );
                  },
                ),
                SizedBox(height: 10),
                ListTile(
                  leading: Icon(Icons.watch, color: const Color.fromARGB(255, 0, 0, 0)), // ไอคอนเครื่องประดับ
                  title: const Text("ACCESSORIES", style: TextStyle(fontSize: 18, color: Color.fromARGB(255, 0, 0, 0))),
                  trailing: const Icon(Icons.arrow_forward, color: Color.fromARGB(255, 0, 0, 0)),
                  onTap: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text("You tapped on ACCESSORIES")),
                    );
                  },
                ),
                SizedBox(height: 10),
              ],
            ),
            // เพิ่มแถวของ Container
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    // ใช้ Expanded เพื่อให้ Container ขยายให้เต็มพื้นที่
                    Expanded(
                      child: Container(
                        height: 250,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black), // กรอบสีดำ
                          borderRadius: BorderRadius.circular(10), // มุมโค้ง
                        ),
                        child: Center(
                          child: Text("sale", style: TextStyle(color: const Color.fromARGB(255, 0, 0, 0))),
                        ),
                      ),
                    ),
                    SizedBox(width: 10), // ช่องว่างระหว่าง Container
                    Expanded(
                      child: Container(
                        height: 250,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black), // กรอบสีดำ
                          borderRadius: BorderRadius.circular(10), // มุมโค้ง
                        ),
                        child: Center(
                          child: Text("new & trending", style: TextStyle(color: const Color.fromARGB(255, 0, 0, 0))),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                      child: Container(
                        height: 250,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black), // กรอบสีดำ
                          borderRadius: BorderRadius.circular(10), // มุมโค้ง
                        ),
                        child: Center(
                          child: Text("sport", style: TextStyle(color: const Color.fromARGB(255, 0, 0, 0))),
                        ),
                      ),
                    ),
                    SizedBox(width: 10), // ช่องว่างระหว่าง Container
                    Expanded(
                      child: Container(
                        height: 250,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black), // กรอบสีดำ
                          borderRadius: BorderRadius.circular(10), // มุมโค้ง
                        ),
                        child: Center(
                          child: Text("giftcard", style: TextStyle(color: const Color.fromARGB(255, 0, 0, 0))),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
      // แถบเมนูด้านล่าง
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex, // เมนูที่เลือก
        onTap: _onItemTapped, // ฟังก์ชันเมื่อกดเมนู
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Colors.black,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.shopping_cart,
              color: Colors.black,
            ),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.favorite,
              color: Colors.black,
            ),
            label: 'Favorites',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.account_circle,
              color: Colors.black,
            ),
            label: 'Profile',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.account_circle,
              color: Colors.black,
            ),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
