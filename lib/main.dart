import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: Theme.of(context).copyWith(
          textTheme: GoogleFonts.quicksandTextTheme(),
          scrollbarTheme: ScrollbarThemeData(
            thumbColor: MaterialStateProperty.all<Color>(
              const Color(0xFF809C4E),
            ),
          )),
      home: Scaffold(
        backgroundColor: const Color(0xFF22403A),
        body: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 32),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      radius: 30,
                      child: Image.asset('assets/icons/avatar.png'),
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      'Select your personal preferences. These are always displayed directly at the top. You can adjust them later in your profile.',
                      style: TextStyle(
                        color: Color(0xFFFFFFFF),
                        fontWeight: FontWeight.w400,
                        fontSize: 18,
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 32),
              Expanded(
                child: Container(
                  padding: const EdgeInsets.fromLTRB(16, 32, 16, 8),
                  decoration: const BoxDecoration(
                    color: Color(0xFFFFFDFF),
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(30),
                    ),
                  ),
                  child: Column(
                    children: [
                      CircleAvatar(
                        radius: 40,
                        backgroundColor: const Color(0xFF22403A),
                        child: SvgPicture.asset(
                          'assets/icons/love.svg',
                          height: 40,
                        ),
                      ),
                      const SizedBox(height: 10),
                      const Text(
                        'Your valuse of sustainability',
                        style: TextStyle(
                          color: Color(0xFF22403A),
                          fontWeight: FontWeight.w600,
                          fontSize: 25,
                        ),
                      ),
                      const SizedBox(height: 5),
                      const Text(
                        'Which values are most important to you?',
                        style: TextStyle(
                          color: Color(0xFF22403A),
                          fontWeight: FontWeight.w400,
                          fontSize: 17,
                        ),
                      ),
                      const SizedBox(height: 20),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.30,
                        child: Scrollbar(
                          thumbVisibility: true,
                          thickness: 10,
                          radius: const Radius.circular(10),
                          child: ListView(
                            padding: const EdgeInsets.symmetric(horizontal: 16),
                            children: [
                              const ListItem(
                                title: 'Bio',
                                description: 'Organic Farming',
                                image: 'assets/icons/bee.png',
                              ),
                              const ListItem(
                                title: 'Rainforest protection',
                                description: 'Avoidance of palm oil, ...',
                                image: 'assets/icons/tree.png',
                              ),
                              for (int i = 0; i < 10; i++)
                                const ListItem(
                                  title: 'Dummy',
                                  description: 'Dummy',
                                  image: 'assets/icons/bee.png',
                                ),
                            ],
                          ),
                        ),
                      ),
                      const Spacer(),
                      SizedBox(
                        width: double.infinity,
                        height: 50,
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xFF809C4E),
                            shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(30),
                              ),
                            ),
                          ),
                          child: const Text(
                            'Continue',
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 22,
                            ),
                          ),
                        ),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: const Text(
                          'Skip',
                          style: TextStyle(
                            color: Color(0xFF809C4E),
                            fontWeight: FontWeight.w600,
                            fontSize: 18,
                          ),
                        ),
                      )
                    ],
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

class ListItem extends StatelessWidget {
  const ListItem({
    super.key,
    required this.title,
    required this.description,
    required this.image,
  });
  final String title;
  final String description;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 3),
      height: 50,
      child: ElevatedButton.icon(
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xFFFFFDFF),
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            ),
          ),
        ),
        onPressed: () {},
        icon: const Icon(
          Icons.check_box_outline_blank,
          color: Color(0xFF809C4E),
          size: 25,
        ),
        label: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                Image.asset(
                  image,
                  height: 20,
                ),
                const SizedBox(
                  width: 5,
                ),
                Text(
                  title,
                  style: TextStyle(
                    color: const Color(0xFF22403A),
                    fontFamily: GoogleFonts.quicksand().fontFamily,
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
            Text(
              description,
              style: TextStyle(
                color: const Color(0xFF999999),
                fontFamily: GoogleFonts.quicksand().fontFamily,
                fontWeight: FontWeight.w400,
                fontSize: 14,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
