import 'package:flutter/material.dart';

import 'home_page.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //logo
              Image.asset(
                'lib/images/nike.png',
                height: 200,
                width: 200,
              ),

              const SizedBox(height: 50.0),

              //title
              const Text(
                'JUST DO IT!!!',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              const SizedBox(height: 50.0),

              //subtitle
              const Text(
                'Nisi consequat exercitation nulla anim reprehenderit eiusmod consectetur eu dolore esse velit aliquip in. Deserunt deserunt labore esse nostrud esse. Ipsum consequat eiusmod laborum mollit veniam. Ea excepteur Lorem nulla ipsum enim occaecat pariatur minim. Laboris et laboris laborum irure deserunt incididunt magna labore est. Esse reprehenderit exercitation non et pariatur fugiat irure. Do et eiusmod magna culpa sunt anim.',
                style: TextStyle(fontSize: 14, color: Colors.grey),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 50.0),

              //button
              GestureDetector(
                onTap: () => Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const HomePage())),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(20)),
                  padding: const EdgeInsets.all(25),
                  child: const Center(
                    child: Text('START NOW',
                        style: TextStyle(color: Colors.white, fontSize: 16)),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
