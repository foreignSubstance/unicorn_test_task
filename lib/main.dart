import 'package:flutter/material.dart';
import 'package:unicorn_test_task/settings.dart';
import 'package:unicorn_test_task/widgets/content_widget.dart';
import 'package:unicorn_test_task/widgets/profile_widget.dart';

void main() {
  runApp(const ContractorPage());
}

class ContractorPage extends StatelessWidget {
  const ContractorPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color(0xFFFCFEFF),
        appBar: AppBar(
          backgroundColor: const Color(0xffE8F8FF),
          title: const Text(
            'Dashboard',
            style: TextStyle(
                fontSize: 16,
                color: Color(0xff242A2D),
                fontFamily: 'Inter',
                fontWeight: FontWeight.w600),
          ),
          centerTitle: true,
          leading: const Icon(Icons.menu),
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                width: 20,
                height: 20,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    const Image(
                      image: AssetImage('assets/images/bell_icon.png'),
                    ),
                    Positioned(
                      right: 0,
                      top: 0,
                      child: Container(
                        width: 11,
                        height: 11,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: mainColor,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        bottomNavigationBar: Container(
          decoration: const BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Color(0x33829FAB),
                blurRadius: 20,
                offset: Offset(4, 0),
              )
            ],
          ),
          child: ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(16),
              topRight: Radius.circular(16),
            ),
            child: BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              backgroundColor: const Color(0xffFCFEFF),
              selectedFontSize: 10,
              unselectedFontSize: 10,
              currentIndex: 0,
              elevation: 20,
              selectedItemColor: mainColor,
              unselectedItemColor: const Color(0xFF7B8D95),
              items: [
                BottomNavigationBarItem(
                    icon: Padding(
                      padding: const EdgeInsets.only(bottom: 8.0),
                      child: Image.asset('assets/images/home_icon.png'),
                    ),
                    label: 'Dahsboard'),
                BottomNavigationBarItem(
                    icon: Padding(
                      padding: const EdgeInsets.only(bottom: 8.0),
                      child: Image.asset('assets/images/market_icon.png'),
                    ),
                    label: 'Job Market'),
                BottomNavigationBarItem(
                    icon: FloatingActionButton(
                      onPressed: () {},
                      elevation: 0,
                      shape: const CircleBorder(
                        side: BorderSide(style: BorderStyle.none),
                      ),
                      child: Container(
                        width: 60,
                        height: 60,
                        alignment: Alignment.center,
                        decoration: const BoxDecoration(
                            gradient: mainGradient, shape: BoxShape.circle),
                        child: const Text(
                          '+',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 40,
                              fontWeight: FontWeight.w300),
                        ),
                      ),
                    ),
                    label: ''),
                BottomNavigationBarItem(
                    icon: Padding(
                      padding: const EdgeInsets.only(bottom: 8.0),
                      child: Image.asset('assets/images/calendar_icon.png'),
                    ),
                    label: 'Calendar'),
                BottomNavigationBarItem(
                    icon: Padding(
                      padding: const EdgeInsets.only(bottom: 8.0),
                      child: Image.asset('assets/images/messages_icon.png'),
                    ),
                    label: 'Messages'),
              ],
            ),
          ),
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Stack(children: [
            Container(
              color: const Color(0xffE8F8FF),
              height: 170,
            ),
            const Column(
              children: [
                Profile(),
                Content(),
              ],
            ),
          ]),
        ),
      ),
    );
  }
}
