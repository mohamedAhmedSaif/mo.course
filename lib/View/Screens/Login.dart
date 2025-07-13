import 'package:flutter/material.dart';

class ForgotPasswordPage extends StatelessWidget {
  const ForgotPasswordPage({super.key});


  //tests
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // Or your app's background color
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios, color: Color(0xFF6A1B9A)), // Back icon color
          onPressed: () {
            Navigator.pop(context); // Goes back to the previous screen
          },
        ),
        title: const Text(
          'Back',
          style: TextStyle(color: Color(0xFF4a29dc), fontSize: 24),
        ),
        centerTitle: false, // Align title to the left
        titleSpacing: 0, // Reduce space between back icon and title
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            // "Forgot Your Password?" Text
            const Text(
              'Forgot Your Password ?',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Color(0xFF4a29dc),
              ),
            ),
            const SizedBox(height: 10),
            // Description Text
            const Text(
              'Please enter the email address associated with your account, and we\'ll send you OTP to reset your password.',
              style: TextStyle(
                fontSize: 16,
                color: Colors.black54,
              ),
            ),
            const SizedBox(height: 90),
            // Email Input Field (Placeholder)
            TextField(
              decoration: InputDecoration(
                hintText: 'Enter your email address',
                labelText: 'Email',
                filled: true,
                fillColor: Colors.grey[100],
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide: BorderSide.none,
                ),
                contentPadding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 20.0),
              ),
              keyboardType: TextInputType.emailAddress,
            ),
            const SizedBox(height: 130),
            // Send Code Button
            ElevatedButton(
              onPressed: () {
                // Send code logic would go here
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF4a29dc),
                padding: const EdgeInsets.symmetric(vertical: 15.0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                minimumSize: const Size(double.infinity, 50),
              ),
              child: const Text(
                'Send Code',
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}