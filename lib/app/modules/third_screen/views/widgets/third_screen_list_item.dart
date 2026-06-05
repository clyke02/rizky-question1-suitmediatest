import 'package:flutter/material.dart';

class ThirdScreenListItem extends StatelessWidget {
  const ThirdScreenListItem({
    super.key,
    required this.firstName,
    required this.lastName,
    required this.email,
    required this.avatar,
    this.onTap,
  });

  final String? firstName;
  final String? lastName;
  final String? email;
  final String? avatar;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
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
            const SizedBox(width: 20),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '${firstName ?? ''} ${lastName ?? ''}'.trim(),
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF04021D),
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  email?.toUpperCase() ?? '',
                  style: const TextStyle(
                    fontSize: 10,
                    color: Color(0xFF686777),
                  ),
                ),
              ],
            ),
          ],
        ),
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
