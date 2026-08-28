import 'package:flutter/material.dart';

class HeroProfileCard extends StatelessWidget {
  const HeroProfileCard({super.key});

  @override
  Widget build(BuildContext context) {
       final width = MediaQuery.of(context).size.width;

  if (width < 600) {
    return const SizedBox.shrink();
  }
    return LayoutBuilder(
      builder: (context, constraints) {
        // Maximum width limit (web pe bhi control rahe)
        final maxWidth = constraints.maxWidth > 520 ? 520.0 : constraints.maxWidth;
        final size = maxWidth;

        // Photo size (responsive)
        final photoSize = size * 0.42;

        // Icons size
        final iconSize = size * 0.13;

        return Center(
          child: Container(
            width: size,
            height: size * 0.85, // thoda landscape feel
            decoration: BoxDecoration(
              color: const Color(0xFFF3E8FF), // light purple
              borderRadius: BorderRadius.circular(28),
            ),
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                // ---------- Center Photo ----------
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    width: photoSize,
                    height: photoSize,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.white, width: 6),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.08),
                          blurRadius: 20,
                          offset: const Offset(0, 8),
                        ),
                      ],
                    ),
                    child: ClipOval(
                      child: Image.asset(
                        "assets/images/bg.png", // apni image path
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),

                // ---------- Flutter Logo (top-left) ----------
                _buildFloatingIcon(
                  alignment: const Alignment(-0.72, -0.55),
                  size: iconSize,
                  child: Image.asset(
                    "assets/images/profile.png", // ya Icons se banao
                    width: iconSize * 0.55,
                  ),
                  // Agar asset nahi hai to yeh use karo:
                  // child: Icon(Icons.flutter_dash, color: Color(0xFF02569B), size: iconSize * 0.55),
                ),

                // ---------- Phone Icon (top-right) ----------
                _buildFloatingIcon(
                  alignment: const Alignment(0.72, -0.45),
                  size: iconSize,
                  child: Icon(
                    Icons.phone_android_rounded,
                    color: const Color(0xFF7C3AED),
                    size: iconSize * 0.55,
                  ),
                ),

                // ---------- Book Icon (bottom-right) ----------
                _buildFloatingIcon(
                  alignment: const Alignment(0.68, 0.42),
                  size: iconSize,
                  child: Icon(
                    Icons.menu_book_rounded,
                    color: const Color(0xFF7C3AED),
                    size: iconSize * 0.55,
                  ),
                ),

                // ---------- Phone Icon (bottom-left) ----------
                _buildFloatingIcon(
                  alignment: const Alignment(-0.72, 0.38),
                  size: iconSize,
                  child: Icon(
                    Icons.smartphone_rounded,
                    color: const Color(0xFF7C3AED),
                    size: iconSize * 0.55,
                  ),
                ),

                // ---------- Decorative Dots ----------
                ..._buildDots(size),

                // ---------- Text + Arrow ----------
                Positioned(
                  bottom: size * 0.06,
                  right: size * 0.08,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        "Code. Create.",
                        style: TextStyle(
                          fontFamily: 'Caveat', // cursive font (optional)
                          fontSize: size * 0.055,
                          fontWeight: FontWeight.w600,
                          color: const Color(0xFF5B21B6),
                          height: 1.1,
                        ),
                      ),
                      Text(
                        "Inspire.",
                        style: TextStyle(
                          fontFamily: 'Caveat',
                          fontSize: size * 0.055,
                          fontWeight: FontWeight.w600,
                          color: const Color(0xFF5B21B6),
                        ),
                      ),
                      const SizedBox(height: 4),
                      Icon(
                        Icons.arrow_forward,
                        size: size * 0.05,
                        color: const Color(0xFF7C3AED),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  // Floating white circle icon
  Widget _buildFloatingIcon({
    required Alignment alignment,
    required double size,
    required Widget child,
  }) {
    return Align(
      alignment: alignment,
      child: Container(
        width: size,
        height: size,
        decoration: BoxDecoration(
          color: Colors.white,
          shape: BoxShape.circle,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.06),
              blurRadius: 12,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: Center(child: child),
      ),
    );
  }

  // Small decorative dots
  List<Widget> _buildDots(double size) {
    return [
      // Left side dots
      Positioned(
        left: size * 0.08,
        top: size * 0.28,
        child: _dot(size * 0.012),
      ),
      Positioned(
        left: size * 0.05,
        top: size * 0.35,
        child: _dot(size * 0.008),
      ),
      Positioned(
        left: size * 0.12,
        top: size * 0.42,
        child: _dot(size * 0.01),
      ),

      // Right side dots
      Positioned(
        right: size * 0.09,
        top: size * 0.22,
        child: _dot(size * 0.01),
      ),
      Positioned(
        right: size * 0.05,
        top: size * 0.30,
        child: _dot(size * 0.008),
      ),
      Positioned(
        right: size * 0.13,
        top: size * 0.48,
        child: _dot(size * 0.009),
      ),
    ];
  }

  Widget _dot(double size) {
    return Container(
      width: size,
      height: size,
      decoration: const BoxDecoration(
        color: Color(0xFFC4B5FD),
        shape: BoxShape.circle,
      ),
    );
  }
}