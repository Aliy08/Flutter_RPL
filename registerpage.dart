import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  @override
  State<RegisterPage> createState() => _RegisterState();
}

class _RegisterState extends State<RegisterPage> {
  final TextEditingController phoneController = TextEditingController();
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Image.asset(
                  "assets/images/logo1.png",
                  height: 80,
                ),
              ],
            ),
            SizedBox(height: 20),
            Text(
              'Silahkan masuk dengan nomor telkomsel kamu',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                fontFamily: 'Poppins',
                ),
            ),
            SizedBox(height: 20),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Nomor HP',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: 8),
                TextField(
                  controller: phoneController,
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                  ),
                ),
              ],
            ),
                
            SizedBox(height: 10),
            Row(
              children: [
                Checkbox(
                  value: isChecked,
                 onChanged: (value) {
                  setState(() {
                    isChecked = value!;
                  });
                 },
                 activeColor: Colors.red,
                 checkColor: Colors.white,
                ),
                Expanded(
                  child: RichText(
                    text: TextSpan(
                      style: TextStyle(
                        fontFamily: 'Poppins-Regular',
                        fontSize: 12,
                        color: Colors.black,
                      ),
                      children: [
                        TextSpan(text: 'Saya menyetujui '),
                        TextSpan(
                          text: 'syarat',
                          style: TextStyle(color: Colors.red),
                        ),
                        TextSpan(text: ' , '),
                        TextSpan(
                          text: 'ketentuan',
                          style: TextStyle(color: Colors.red),
                        ),
                        TextSpan(text: ', dan '),
                        TextSpan(
                          text: 'privasi ',
                          style: TextStyle(color: Colors.red),
                        ),
                        TextSpan(text: 'Telkomsel'),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {

                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red,
                  shape: RoundedRectangleBorder(
                    borderRadius: 
                    BorderRadius.circular(8),
                  ),
                  padding: EdgeInsets.symmetric(vertical: 16),
                ),
                child: Text(
                  'MASUK',
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                  ),
              ),
            ),
            SizedBox(height: 20),
            Center(
              child: Text(
                'Atau masuk menggunakan',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 14,
                ),
              ),
            ),

            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('assets/images/facebook.png', height: 40),
                SizedBox(width: 30),
                Image.asset('assets/images/twitter.png', height: 40),
              ],
            ),
          ],
        ),
      ),
    );
  }
}