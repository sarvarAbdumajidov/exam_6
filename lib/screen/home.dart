import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  static int countt = 1;

  void countSub() {
    setState(() {
      if (countt != 0) countt--;
    });
  }

  void countAdd() {
    setState(() {
      countt++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(
              height: 7,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Image.asset(
                      'assets/icons/back.png',
                      scale: 1.2,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Image.asset(
                      'assets/icons/1x.png',
                      scale: 1.2,
                    ),
                  ),
                ],
              ),
            ),
            Container(height: 2, color: Colors.white10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: SizedBox(
                  height: 250, child: Image.asset('assets/images/vegan.png')),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                alignment: Alignment.centerLeft,
                child: const Text(
                  'Vegan\nProtein Bar',
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 52,
                    color: Colors.white,
                    fontFamily: "SF pro",
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                alignment: Alignment.centerLeft,
                child: const Text(
                  '50g',
                  style: TextStyle(
                    fontFamily: "SF pro",
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF8B8B8B),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 150,
                    height: 44,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      border: Border.all(color: Colors.white10, width: 3),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        GestureDetector(
                          onTap: countSub,
                          child: const Icon(
                            CupertinoIcons.minus,
                            color: Colors.white,
                            size: 20,
                          ),
                        ),
                        Text(
                          countt.toString(),
                          style: const TextStyle(
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                            fontSize: 18,
                          ),
                        ),
                        GestureDetector(
                          onTap: countAdd,
                          child: const Icon(
                            CupertinoIcons.add,
                            color: Colors.white,
                            size: 20,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Text(
                    r"$1.99",
                    style: TextStyle(
                      fontFamily: "SF pro",
                      fontWeight: FontWeight.w600,
                      fontSize: 24,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                alignment: Alignment.centerLeft,
                child: const Text(
                  'About',
                  style: TextStyle(
                      fontFamily: "SF pro",
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                      fontSize: 16),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 6),
              child: Container(
                alignment: Alignment.centerLeft,
                child: const Text(
                  'A vegan protein bar without compromises. We have\nchosen the most suitable source of vegetable\nprotein, which meets our quality requirements and\ndoes not significantly affect the taste of the bar.',
                  style: TextStyle(
                      fontFamily: "SF pro",
                      fontWeight: FontWeight.w400,
                      color: Color(0xFF8B8B8B),
                      fontSize: 14),
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        unselectedLabelStyle: const TextStyle(
          fontWeight: FontWeight.w500,
          color: Color(0xFF8B8B8B),
        ),
        unselectedItemColor: const Color(0xFF8B8B8B),
        fixedColor: Colors.white,
        backgroundColor: Colors.black,
        iconSize: 32,
        items: [
          BottomNavigationBarItem(
            icon: Image.asset('assets/icons/Home.png'),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Image.asset('assets/icons/Profile.png'),
            label: "Profile",
          ),
          BottomNavigationBarItem(
              icon: Image.asset('assets/icons/Search.png'), label: "Search"),
        ],
      ),
    );
  }
}
