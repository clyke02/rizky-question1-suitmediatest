import 'package:flutter/material.dart';

class ThirdScreenListItem extends StatelessWidget {
  const ThirdScreenListItem({
    super.key,
    required this.firstName,
    required this.lastName,
    required this.email,
    required this.avatar,
  });

  final String? firstName;
  final String? lastName;
  final String? email;
  final String? avatar;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      child: Row(
        children: [
          ClipOval(
            child: avatar != null
                ? Image.network(
                    avatar!,
                    width: 60,
                    height: 60,
                    fit: BoxFit.cover,
                    errorBuilder: (_, __, ___) => _placeholder(),
                  )
                : _placeholder(),
          ),
          const SizedBox(width: 16),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '${firstName ?? ''} ${lastName ?? ''}'.trim(),
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Color(0xFF1A1A1A),
                ),
              ),
              const SizedBox(height: 4),
              Text(
                email?.toUpperCase() ?? '',
                style: const TextStyle(
                  fontSize: 12,
                  color: Color(0xFF888888),
                  letterSpacing: 0.3,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _placeholder() => Container(
        width: 60,
        height: 60,
        color: const Color(0xFFE2E3E4),
        child: const Icon(Icons.person, color: Colors.grey),
      );
}
