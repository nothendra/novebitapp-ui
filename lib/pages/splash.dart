import 'package:flutter/material.dart';

class Splash extends StatelessWidget {
  const Splash({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(25.0),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('lib/assets/img/blurred-dark.png'),
            fit: BoxFit.cover
            ),
        ),
        child: Center(
          child: Column(
            children: [
              // Logo
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Image.asset(
                  'lib/assets/img/novebit-v2-darkm.png',
                  height: 400,
                ),
              ),
        
              SizedBox(height: 35),
        
              // Title
              Text(
                "The Ultimate Game Library",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Color.fromARGB(255, 235, 235, 235),
                ),
              ),
        
              SizedBox(height: 10),
        
              // Subtitle
              Text(
                "Head below to start your adventure.",
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 15,
                ),
              ),

              SizedBox(height: 50),
        
              // Button 
              GestureDetector(
                onTap: () => Navigator.pushNamed(context, '/login'),
                child: Container(
                  height: 80,
                  width: 400,
                  decoration: BoxDecoration(
                    color: Color(0xFF7db3e9),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 50),
                  child: const Center(
                    child: Text(
                      "Start Now",
                      style: TextStyle(
                        color: Color.fromARGB(255, 0, 0, 0),
                        fontWeight: FontWeight.w900,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}