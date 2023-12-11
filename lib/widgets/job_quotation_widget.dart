import 'package:flutter/material.dart';
import 'package:unicorn_test_task/settings.dart';

class JobQuotation extends StatelessWidget {
  const JobQuotation({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Jobs Offers',
                style: widgetTitleStyle,
              ),
              Text(
                'View all',
                style: buttonTextStyle,
              ),
            ],
          ),
          const Row(
            children: [
              Padding(
                padding: EdgeInsets.only(right: 8.0),
                child: Image(
                  image: AssetImage('assets/images/clock_icon.png'),
                ),
              ),
              Text('Thurs, July • 9:00 AM - 1:00 PM')
            ],
          ),
          const SizedBox(height: 12),
          Stack(
            alignment: Alignment.topCenter,
            clipBehavior: Clip.none,
            fit: StackFit.passthrough,
            children: [
              Positioned(
                top: 10,
                width: MediaQuery.of(context).size.width - 40,
                child: Transform.scale(
                  scaleX: 0.95,
                  child: const JobCard(),
                ),
              ),
              const JobCard(),
              Positioned(
                top: -9,
                right: 3,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      backgroundColor: mainColor,
                      tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      minimumSize: const Size(40, 24),
                      padding: EdgeInsets.zero),
                  child: const Text(
                    '5',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class JobCard extends StatelessWidget {
  const JobCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(8)),
        boxShadow: [
          BoxShadow(
            color: Color(0x267799A8),
            blurRadius: 10,
            offset: Offset(0, 4),
          )
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 8),
        child: IntrinsicHeight(
          child: SizedBox(
            width: MediaQuery.of(context).size.width,
            child: Row(
              children: [
                const Image(
                  image: AssetImage('assets/images/quotation.png'),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Sink Repair',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              Text(
                                'Contractor: Contractor Name',
                                style: TextStyle(fontSize: 12),
                              ),
                              Text(
                                '10 Regent Street, W17SK',
                                style: TextStyle(fontSize: 12),
                              ),
                            ],
                          ),
                          Container(
                            width: 32,
                            height: 32,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                color: const Color(0xffD3E0E6),
                              ),
                            ),
                            child: const Image(
                              image: AssetImage(
                                  'assets/images/map_marker_icon.png'),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(6),
                            child: Stack(
                              alignment: Alignment.center,
                              children: [
                                Positioned.fill(
                                  child: Container(
                                    decoration: const BoxDecoration(
                                      gradient: mainGradient,
                                    ),
                                  ),
                                ),
                                TextButton(
                                  onPressed: () {},
                                  style: TextButton.styleFrom(
                                      fixedSize: const Size(96.5, 40),
                                      tapTargetSize:
                                          MaterialTapTargetSize.shrinkWrap),
                                  child: const Text(
                                    'View Job',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 12),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            alignment: Alignment.center,
                            clipBehavior: Clip.none,
                            width: 96.5,
                            height: 40,
                            padding: const EdgeInsets.all(1),
                            decoration: BoxDecoration(
                              gradient: mainGradient,
                              borderRadius: BorderRadius.circular(6),
                            ),
                            child: Container(
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(6),
                              ),
                              child: TextButton(
                                onPressed: () {},
                                child: const Text(
                                  'Message',
                                  style:
                                      TextStyle(color: mainColor, fontSize: 12),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
