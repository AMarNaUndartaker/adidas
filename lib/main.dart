import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: HomeScreen(),
  ));
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SHOP'),
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        elevation: 4,
        actions: [
          IconButton(
            icon: const Icon(Icons.person),
            onPressed: () {
              print("Profile icon tapped");
            },
          ),
        ],
      ),
      body: Column(
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
                "asset\Image\2020-05-06 (1).png", 
                width: 300,
                height: 200,
                fit: BoxFit.cover, // ปรับให้รูปเต็มพื้นที่
              ),
            ),
          ),
           Expanded(
            child: ListView(
              children: [
                ListTile(
                  leading: Icon(Icons.directions_run, color: const Color.fromARGB(255, 0, 0, 0)), // ไอคอนรองเท้า
                  title: const Text("SHOES", style: TextStyle(fontSize: 18, color: Color.fromARGB(255, 0, 0, 0))),
                  onTap: () {
                    // ทำสิ่งที่ต้องการเมื่อกดรายการนี้
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text("You tapped on SHOES")),
                    );
                  },
                ),
                ListTile(
                  leading: Icon(Icons.checkroom, color: const Color.fromARGB(255, 0, 0, 0)), // ไอคอนเสื้อผ้า
                  title: const Text("CLOTHING", style: TextStyle(fontSize: 18, color: Color.fromARGB(255, 0, 0, 0))),
                  onTap: () {
                    // ทำสิ่งที่ต้องการเมื่อกดรายการนี้
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text("You tapped on CLOTHING")),
                    );
                  },
                ),
                ListTile(
                  leading: Icon(Icons.watch, color: const Color.fromARGB(255, 0, 0, 0)), // ไอคอนเครื่องประดับ
                  title: const Text("ACCESSORIES", style: TextStyle(fontSize: 18, color: Color.fromARGB(255, 0, 0, 0))),
                  onTap: () {
                    // ทำสิ่งที่ต้องการเมื่อกดรายการนี้
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text("You tapped on ACCESSORIES")),
                    );
                  },
                ),
              ],
            ),
           ),
          
        ],
      ),
    );
  }
}
