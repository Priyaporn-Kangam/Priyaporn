import 'package:final_exam_620710317/profile_card.dart';
import 'package:flutter/material.dart'; // นำเข้าไฟล์ ProfileCard

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 223, 188, 228),
        appBar: AppBar(
          title: const Text(
            "Custom Widget",
            style: TextStyle(color: Colors.white),
          ),
          centerTitle: true,
          backgroundColor: const Color.fromARGB(255, 208, 63, 140),
        ),
        body: Center(
          child: ProfileCard(
            name: "Priyaporn Kangam",
            position: "Student",
            email: "kangam_p@silpakorn.edu",
            phone: "+66 1234 5678",
            imageUrl: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQOnm9ujLpL3S9cUsThLOJX9HZNM76ZAxNXEA&s",
          ),
        ),
      ),
    );
  }
}


