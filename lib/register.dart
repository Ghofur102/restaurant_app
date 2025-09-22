import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(height: 40),

              // Icon shopping bag (SVG)
              Center(
                child: SvgPicture.asset(
                  'assets/icons/shopping_bag.svg',
                  width: 80,
                  height: 80,
                ),
              ),
              const SizedBox(height: 16),

              // Title dan subtitle
              const Center(
                child: Text(
                  "Create Account",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(height: 4),
              const Center(
                child: Text(
                  "Join us today !",
                  style: TextStyle(
                    fontSize: 14,
                    color: Color(0xFF0088FF), // #0088FF
                  ),
                ),
              ),
              const SizedBox(height: 32),

              // Input fields
              TextField(
                decoration: const InputDecoration(
                  hintText: "Fullname",
                  border: UnderlineInputBorder(),
                  contentPadding: EdgeInsets.symmetric(vertical: 12),
                ),
              ),
              const SizedBox(height: 16),
              TextField(
                decoration: const InputDecoration(
                  hintText: "Username",
                  border: UnderlineInputBorder(),
                  contentPadding: EdgeInsets.symmetric(vertical: 12),
                ),
              ),
              const SizedBox(height: 16),
              TextField(
                decoration: const InputDecoration(
                  hintText: "Email",
                  border: UnderlineInputBorder(),
                  contentPadding: EdgeInsets.symmetric(vertical: 12),
                ),
                keyboardType: TextInputType.emailAddress,
              ),
              const SizedBox(height: 16),
              TextField(
                decoration: const InputDecoration(
                  hintText: "Password",
                  border: UnderlineInputBorder(),
                  contentPadding: EdgeInsets.symmetric(vertical: 12),
                ),
                obscureText: true,
              ),
              const SizedBox(height: 16),
              TextField(
                decoration: const InputDecoration(
                  hintText: "Confirm Password",
                  border: UnderlineInputBorder(),
                  contentPadding: EdgeInsets.symmetric(vertical: 12),
                ),
                obscureText: true,
              ),
              const SizedBox(height: 32),

              // Register button
              SizedBox(
                width: double.infinity,
                height: 48,
                child: ElevatedButton(
                  onPressed: () {
                    // nanti isi fungsi register
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF0088FF), // biru
                    foregroundColor: Colors.white, // teks jadi putih
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(24),
                    ),
                  ),
                  child: const Text(
                    "Register",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 16),

              // Already have account
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Already have an account ? "),
                  GestureDetector(
                    onTap: () {
                      // nanti arahkan ke Sign In page
                    },
                    child: const Text(
                      "Sign In",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
