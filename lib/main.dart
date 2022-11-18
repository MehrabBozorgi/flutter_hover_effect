import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HoverScreen(),
    );
  }
}

class HoverScreen extends StatefulWidget {
  const HoverScreen({Key? key}) : super(key: key);

  @override
  State<HoverScreen> createState() => _HoverScreenState();
}

class _HoverScreenState extends State<HoverScreen> {
  bool hover = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            MouseRegion(
              onEnter: (h) {
                setState(() {
                  hover = false;
                });
              },
              onExit: (h) {
                setState(() {
                  hover = true;
                });
              },
              child: ElevatedButton(
                onPressed: () {},
                child:
                    hover == true ? const Text('Button 1') : const Text('Hover Button 1'),
              ),
            ),
            const SizedBox(height: 30),
            MouseRegion(
              onEnter: (h) {
                setState(() {
                  hover = false;
                });
              },
              onExit: (h) {
                setState(() {
                  hover = true;
                });
              },
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: hover == true
                        ? BorderRadius.circular(5)
                        : BorderRadius.circular(20),
                  ),
                ),
                onPressed: () {},
                child:
                    hover == true ? const Text('Button 2') : const Text('Hover Button 2'),
              ),
            ),
            const SizedBox(height: 30),
            MouseRegion(
              onEnter: (h) {
                setState(() {
                  hover = false;
                });
              },
              onExit: (h) {
                setState(() {
                  hover = true;
                });
              },
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: hover == true
                        ? BorderRadius.circular(5)
                        : BorderRadius.circular(20),
                  ),
                  fixedSize: hover == true ? const Size(100, 30) : const Size(250, 40),
                  backgroundColor: hover == true ? Colors.blue : Colors.green,
                ),
                onPressed: () {},
                child: hover == true
                    ? const Text(
                        'Button 3',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      )
                    : Text(
                        'Hover Button 3',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.green.shade900,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
              ),
            ),
            const SizedBox(height: 30),
            MouseRegion(
              onEnter: (h) {
                setState(() {
                  hover = false;
                });
              },
              onExit: (h) {
                setState(() {
                  hover = true;
                });
              },
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 300),
                height: hover == true ? 45 : 55,
                width: hover == true ? 280 : 380,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: hover == true ? Colors.blue : Colors.red,
                  boxShadow: [
                    hover == true
                        ? BoxShadow(
                            color: Colors.grey.shade300,
                            offset: const Offset(1, 1),
                            blurRadius: 5,
                          )
                        : BoxShadow(
                            color: Colors.grey.shade400,
                            offset: const Offset(5, 5),
                            blurRadius: 10,
                          ),
                  ],
                ),
                child: hover == true
                    ? const Text(
                        'Animated Container Button',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      )
                    : const Text(
                        'Hover Animated Container Button',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        ),
                      ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
