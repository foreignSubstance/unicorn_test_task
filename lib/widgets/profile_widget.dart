import 'package:flutter/material.dart';
import 'package:unicorn_test_task/settings.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(
        top: 16.0,
        left: 20,
        right: 20,
        bottom: 24,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ProfileAvatar(),
          SizedBox(width: 13),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Hello, James',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                  color: Color(0xff121315),
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(right: 4),
                    child: Image(
                      image: AssetImage('assets/images/location_icon.png'),
                    ),
                  ),
                  Text(
                    'Cambridge, United Kingdom',
                    style: TextStyle(
                      color: Color(0xff464646),
                    ),
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}

class ProfileAvatar extends StatelessWidget {
  const ProfileAvatar({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const Image(
          width: 90,
          height: 90,
          image: AssetImage('assets/images/profile.png'),
        ),
        Container(
          width: 24,
          height: 24,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: mainColor,
            border: Border.all(
              color: Colors.white,
              width: 4,
            ),
          ),
        ),
        Positioned(
          right: 0,
          bottom: 0,
          child: Container(
            width: 36,
            height: 36,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white,
            ),
            child: const Image(
              image: AssetImage('assets/images/pencil_icon.png'),
            ),
          ),
        )
      ],
    );
  }
}
