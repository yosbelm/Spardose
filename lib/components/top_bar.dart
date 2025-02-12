import 'package:flutter/material.dart';

class TopBar extends StatelessWidget {
  final String texto;
  const TopBar({
    super.key,
    required this.texto,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const CircleAvatar(
            backgroundImage: NetworkImage(
                'http://yosbel.pages.dev/assets/hero-banner-BtltQ9Po.jpg'),
            radius: 20,
          ),
          Row(
            children: [
              // Image.asset('images/home.png', height: 24),
              const SizedBox(width: 8),
              Text(
                texto,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          const Icon(Icons.notifications_none, size: 24),
        ],
      ),
    );
  }
}
