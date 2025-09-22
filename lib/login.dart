import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                // Gambar SVG (tas belanja)
                SvgPicture.asset(
                  'assets/icons/shopping_bag.svg',
                  width: 80,
                  height: 80,
                ),

                const SizedBox(height: 20),

                // Judul
                const Text(
                  "WELCOME BACK !",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1,
                  ),
                ),
                const SizedBox(height: 4),
                const Text(
                  "Sign in to continue",
                  style: TextStyle(color: Colors.grey),
                ),

                const SizedBox(height: 30),

                // Username
                const TextField(
                  decoration: InputDecoration(
                    hintText: "Username",
                    border: UnderlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 20),

                // Password
                const TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: "Password",
                    border: UnderlineInputBorder(),
                  ),
                ),

                const SizedBox(height: 30),

                // Tombol Login & Register
                Row(
                  children: [
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue,
                          padding: const EdgeInsets.symmetric(vertical: 12),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                        child: const Text("Login"),
                      ),
                    ),
                    const SizedBox(width: 10),
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.lightBlueAccent,
                          padding: const EdgeInsets.symmetric(vertical: 12),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                        child: const Text("Register"),
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 15),

                // Lost Password
                Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    "Lost Password ?",
                    style: TextStyle(
                      color: Colors.black87,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
