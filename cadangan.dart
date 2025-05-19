import 'package:flutter/material.dart';

class ColumnRowWidget extends StatelessWidget {
  const ColumnRowWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Contoh Column dan Row',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: const Color.fromARGB(255, 20, 6, 55),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              'Selamat Datang di Column dan Row!',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 54, 161, 135),
              ),
            ),
            const SizedBox(height: 20),
            Container(
              width: 165,
              height: 165,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: const DecorationImage(
                  image: NetworkImage(
                    'https://m.media-amazon.com/images/I/91p1cFHewRL._AC_UF894,1000_QL80_.jpg',
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('Tombol 1 ditekan!')),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 99, 17, 1),
                    foregroundColor: Colors.white,
                  ),
                  child: const Text('Dauntdless'),
                ),
                const SizedBox(width: 20),
                ElevatedButton(
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('Tombol 2 ditekan!')),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 207, 221, 97),
                    foregroundColor: Colors.white,
                  ),
                  child: const Text('Erudite'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(const MaterialApp(
    home: ColumnRowWidget(),
  ));
}
