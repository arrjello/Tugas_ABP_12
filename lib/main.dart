import 'package:flutter/material.dart';
import 'tutorial_11-1.dart';
import 'tutorial_12.dart';
import 'tutorial_13.dart';

void main() => runApp(MaterialApp(
  title: 'Geolocation',
  theme: ThemeData(
    primarySwatch: Colors.blue,
  ),
  debugShowCheckedModeBanner: false,
  home: const MyApp13(),
));

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Layout Part 1',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(
        title: 'Demo Layout Part 1',
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({
    super.key,
    required this.title,
  });

  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 25,
          vertical: 30,
        ),
        child: Column(
          children: [
            // HEADER
            Container(
              padding: const EdgeInsets.symmetric(vertical: 16),
              child: Row(
                mainAxisAlignment:
                MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment:
                    CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "Welcome,",
                        style: TextStyle(
                          color: Color(0xFF7367F0),
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "NIM - Nama",
                        style: TextStyle(
                          fontSize: 14,
                          color: Color(0xFF4B4B4B),
                        ),
                      ),
                    ],
                  ),
                  const CircleAvatar(
                    radius: 20,
                  ),
                ],
              ),
            ),

            // SCORE CARD
            Container(
              margin: const EdgeInsets.symmetric(
                horizontal: 10,
                vertical: 35,
              ),
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  colors: [
                    Color(0xFF4839EB),
                    Color(0xFF7367F0),
                  ],
                ),
                borderRadius:
                BorderRadius.circular(8.0),
              ),
              child: Column(
                children: [
                  const SizedBox(height: 20),

                  const Text(
                    'Status tes TOEFL Anda:',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                    ),
                  ),

                  const SizedBox(height: 8),

                  const Text(
                    "LULUS",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 20),

                  Padding(
                    padding:
                    const EdgeInsets.symmetric(
                      horizontal: 10,
                    ),
                    child: Row(
                      mainAxisAlignment:
                      MainAxisAlignment
                          .spaceBetween,
                      children: const [
                        Text(
                          'Listening\n80',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                          ),
                        ),
                        Text(
                          'Structure\n80',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                          ),
                        ),
                        Text(
                          'Reading\n90',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 20),
                ],
              ),
            ),

            Container(
              margin:
              const EdgeInsets.symmetric(
                vertical: 38,
              ),
              child: InkWell(
                child: const Text(
                  'Go to Tutorial 11',
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 26,
                  ),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                      const Tutorial11Page(),
                    ),
                  );
                },
              ),
            ),

            Container(
              margin:
              const EdgeInsets.symmetric(
                vertical: 38,
              ),
              child: InkWell(
                child: const Text(
                  'Go to Tutorial 12',
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 26,
                  ),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const MyApp12(),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}