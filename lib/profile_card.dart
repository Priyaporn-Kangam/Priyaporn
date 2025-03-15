import 'package:flutter/material.dart';
 // นำเข้าไฟล์ contact_info.dart

class ProfileCard extends StatelessWidget {
  final String name;
  final String position;
  final String email;
  final String phone;
  final String imageUrl;

  const ProfileCard({
   
    required this.name,
    required this.position,
    required this.email,
    required this.phone,
    required this.imageUrl,
     super.key,
  });
  Widget contactInfo(IconData icon, String text, Color iconColor) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, size: 20, color: iconColor),
          const SizedBox(width: 8),
          Text(text, style: const TextStyle(fontSize: 14, color: Colors.black87)),
        ],
      ),
    );
  }

  
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.deepPurple.shade50,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      elevation: 6,
      shadowColor: Colors.deepPurple.shade100,
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 50),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: const Color.fromARGB(255, 192, 139, 213),
                  width: 4.0,
                ),
              ),
              child: CircleAvatar(
                radius: 50,
                backgroundImage: NetworkImage(imageUrl),
              ),
            ),
            const SizedBox(height: 12),
            Text(
              name,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: const Color.fromARGB(255, 98, 93, 123),
              ),
            ),
            Text(
              position,
              style: TextStyle(fontSize: 16, color: Colors.deepPurple.shade400),
            ),
            const Divider(thickness: 1, color: Colors.purple, height: 20),
            contactInfo(Icons.email, email, const Color.fromARGB(255, 199, 189, 225)),
            contactInfo(Icons.phone, phone, Colors.deepPurple.shade900),
          ],
        ),
      ),
    );
  }
}

