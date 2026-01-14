import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(40),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "welcome to",
                style: TextStyle(fontSize: 14, color: Colors.grey),
              ),
              const SizedBox(height: 8),

              RichText(
                text: const TextSpan(
                  style: TextStyle(
                    shadows: const [
                      BoxShadow(
                        blurStyle: BlurStyle.solid,
                        color:Colors.black26,
                        blurRadius: 5,
                        offset: Offset(1.0, 3.0),
                      ),
                    ],
                    fontSize: 22,
                    decoration: TextDecoration.underline,
                  ),
                  children: [
                    TextSpan(
                      text: "mini ",
                      style: TextStyle(color: Colors.black),
                    ),
                    TextSpan(
                      text: "Quiz",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.green,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 40),
              // STACK AREA
              Stack(
                clipBehavior: Clip.none,
                alignment: Alignment.center,
                children: [
                  // Card
                  Container(
                    width: 240,
                    height:240,
                    padding: const EdgeInsets.symmetric(
                      vertical: 40,
                      horizontal: 20,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: Colors.teal, width: 2),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "Ready for a",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize:16,
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        const Text(
                          "Challenge?",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 22,
                            color: Colors.teal,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),

                  // Start Button (overlapping)
                  Positioned(
                    bottom:-22,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        boxShadow: const [
                          BoxShadow(
                            blurStyle: BlurStyle.solid,
                            color:Colors.black26,
                            blurRadius:5,
                            offset: Offset(0.5 , 6.0) // shadow position
                          ),
                        ],
                      ),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.green,
                          padding: const EdgeInsets.symmetric(
                            horizontal:45,
                            vertical:25,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                          elevation: 0, // IMPORTANT: disable default elevation
                        ),
                        onPressed: () {
                          // TODO: start quiz
                        },
                        child: const Text(
                          "Start Quiz",
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
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
