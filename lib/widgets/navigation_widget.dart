import 'package:flutter/material.dart';
import 'package:unicorn_test_task/settings.dart';

const int edgeOfScreenPadding = 20;
const int outerTilesPadding = 16;
const int innerTilesPadding = 12;

class Navigation extends StatelessWidget {
  const Navigation({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          boxShadow: const [
            BoxShadow(
              color: Color(0x33829FAB),
              blurRadius: 20,
              offset: Offset(0, 4),
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const NavigationTile(
                title: 'My Jobs',
                subtitle: '10 jobs',
                asset: 'assets/images/my_jobs_icon.png',
              ),
              const NavigationTile(
                title: 'Pending Jobs',
                subtitle: '5 jobs',
                asset: 'assets/images/pending_jobs_icon.png',
              ),
              Container(
                width: (MediaQuery.of(context).size.width -
                        edgeOfScreenPadding * 2 -
                        outerTilesPadding * 2 -
                        innerTilesPadding * 2) /
                    3,
                height: (MediaQuery.of(context).size.width -
                        edgeOfScreenPadding * 2 -
                        outerTilesPadding * 2 -
                        innerTilesPadding * 2) /
                    3,
                decoration: const BoxDecoration(
                  gradient: mainGradient,
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.all(
                    Radius.circular(8),
                  ),
                ),
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image(
                      width: 24,
                      height: 24,
                      image: AssetImage('assets/images/loupe_icon.png'),
                    ),
                    Text(
                      'Find a Job',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class NavigationTile extends StatelessWidget {
  const NavigationTile(
      {super.key,
      required this.title,
      required this.subtitle,
      required this.asset});
  final String title;
  final String subtitle;
  final String asset;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: (MediaQuery.of(context).size.width -
              edgeOfScreenPadding * 2 -
              outerTilesPadding * 2 -
              innerTilesPadding * 2) /
          3,
      height: (MediaQuery.of(context).size.width -
              edgeOfScreenPadding * 2 -
              outerTilesPadding * 2 -
              innerTilesPadding * 2) /
          3,
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
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image(
            width: 20,
            height: 24,
            image: AssetImage(asset),
          ),
          Text(
            title,
            style: const TextStyle(
              color: Color(0xff121315),
            ),
          ),
          Text(
            subtitle,
            style: const TextStyle(
              fontSize: 12,
              color: Color(0xff738B96),
            ),
          ),
        ],
      ),
    );
  }
}
